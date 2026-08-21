# Build script for the OSINT Mastery site.
# Usage:  ./build.ps1   (from repo root)
# Reads all .md chapters + site/template.html, emits index.html with fully
# pre-rendered HTML (no CDN, no runtime markdown parsing).
# NOTE: new chapters must also be added to ORDER in site/template.html.

$ErrorActionPreference = "Stop"
$root = $PSScriptRoot
if (-not $root) { $root = (Get-Location).Path }

function Slug([string]$t) {
    ($t.ToLower() -replace '[^\w]+', '-').Trim('-')
}

function Convert-MdInline([string]$s) {
    if (-not $s) { return "" }
    $s = $s.Replace('&', '&amp;').Replace('<', '&lt;').Replace('>', '&gt;')
    $store = [System.Collections.Generic.List[string]]::new()
    while ($s -match '`([^`]+)`') {
        $store.Add($Matches[1]) | Out-Null
        $idx = $store.Count - 1
        $s = $s -replace [regex]::Escape($Matches[0]), ("{{C{0}}}" -f $idx)
    }
    $linkEval = [System.Text.RegularExpressions.MatchEvaluator]{ param($m)
        '<a href="' + ($m.Groups[2].Value.Replace('"', '&quot;')) + '">' + $m.Groups[1].Value + '</a>' }
    $s = [regex]::Replace($s, '\[([^\]]+)\]\(([^)\s]+)\)', $linkEval)
    $boldEval = [System.Text.RegularExpressions.MatchEvaluator]{ param($m)
        '<strong>' + $m.Groups[1].Value + '</strong>' }
    $s = [regex]::Replace($s, '\*\*([^*]+)\*\*', $boldEval)
    for ($i = 0; $i -lt $store.Count; $i++) {
        $s = $s.Replace("{C$i}", "<code>" + $store[$i] + "</code>")
    }
    return $s
}

function Parse-TableRow([string]$l) {
    $cells = $l.Trim() -replace '^\|', '' -replace '\|$', ''
    return @($cells -split '\|' | ForEach-Object { $_.Trim() })
}

function Convert-Md([string]$md) {
    $lines = ($md -replace "`r", "") -split "`n"
    $out = [System.Text.StringBuilder]::new()
    $i = 0; $n = $lines.Count
    while ($i -lt $n) {
        $line = $lines[$i]
        if ($line -match '^```') {
            $i++; $buf = @()
            while ($i -lt $n -and $lines[$i] -notmatch '^```') { $buf += $lines[$i]; $i++ }
            $i++
            $code = (($buf -join "`n")).Replace('&', '&amp;').Replace('<', '&lt;').Replace('>', '&gt;')
            [void]$out.AppendLine("<pre><code>$code</code></pre>")
            continue
        }
        if ($line -match '^(#{1,4})\s+(.*)') {
            $lvl = $Matches[1].Length; $txt = $Matches[2].Trim()
            $id = Slug $txt
            $ih = Convert-MdInline $txt
            [void]$out.AppendLine("<h$lvl id=`"$id`">$ih</h$lvl>")
            $i++; continue
        }
        if ($line -match '^(-{3,}|\*{3,})\s*$') { [void]$out.AppendLine('<hr>'); $i++; continue }
        if (($line -match '\|') -and ($i + 1 -lt $n) -and ($lines[$i+1] -match '^\s*\|?[\s:|-]+\|?\s*$') -and ($lines[$i+1] -match '-')) {
            $hdr = Parse-TableRow $line
            $i += 2
            $rows = @()
            while ($i -lt $n -and $lines[$i].Trim() -ne '' -and $lines[$i] -match '\|') { $rows += ,(Parse-TableRow $lines[$i]); $i++ }
            $tb = [System.Text.StringBuilder]::new()
            [void]$tb.Append('<table><thead><tr>')
            foreach ($h in $hdr) { [void]$tb.Append('<th>' + (Convert-MdInline $h) + '</th>') }
            [void]$tb.Append('</tr></thead><tbody>')
            foreach ($r in $rows) {
                [void]$tb.Append('<tr>')
                foreach ($c in $r) { [void]$tb.Append('<td>' + (Convert-MdInline $c) + '</td>') }
                [void]$tb.Append('</tr>')
            }
            [void]$tb.Append('</tbody></table>')
            [void]$out.AppendLine($tb.ToString())
            continue
        }
        if ($line -match '^>\s?(.*)') {
            $buf = @($Matches[1]); $i++
            while ($i -lt $n -and $lines[$i] -match '^>\s?(.*)') { $buf += $Matches[1]; $i++ }
            $inner = Convert-Md (($buf -join "`n") + "`n")
            [void]$out.AppendLine("<blockquote>$inner</blockquote>")
            continue
        }
        if ($line -match '^\s*[-*]\s+' -or $line -match '^\s*\d+\.\s+') {
            $ordered = ($line -match '^\s*\d+\.\s+')
            $tag = if ($ordered) { 'ol' } else { 'ul' }
            $items = @()
            while ($i -lt $n -and ($lines[$i] -match '^\s*[-*]\s+(.*)' -or $lines[$i] -match '^\s*\d+\.\s+(.*)')) {
                $items += $Matches[1]; $i++
                while ($i -lt $n -and $lines[$i] -match '^\s{2,}\S' -and $lines[$i] -notmatch '^\s*([-*]|\d+\.)\s') {
                    $items[-1] += ' ' + $lines[$i].Trim(); $i++
                }
            }
            $lb = [System.Text.StringBuilder]::new()
            [void]$lb.Append("<$tag>")
            foreach ($it in $items) { [void]$lb.Append('<li>' + (Convert-MdInline $it) + '</li>') }
            [void]$lb.Append("</$tag>")
            [void]$out.AppendLine($lb.ToString())
            continue
        }
        if ($line.Trim() -eq '') { $i++; continue }
        $p = @($line); $i++
        while ($i -lt $n -and $lines[$i].Trim() -ne '' -and $lines[$i] -notmatch '^(#{1,4}\s|```|\||>|[-*]\s|\d+\.\s|-{3,})') {
            $p += $lines[$i]; $i++
        }
        [void]$out.AppendLine('<p>' + (Convert-MdInline ($p -join ' ')) + '</p>')
    }
    return $out.ToString()
}

function Get-PlainText([string]$html) {
    $t = $html -replace '<[^>]+>', ' '
    $t = $t -replace '&amp;', '&' -replace '&lt;', '<' -replace '&gt;', '>' -replace '&quot;', '"'
    return ($t -replace '\s+', ' ').Trim()
}

# ---- assemble pages ----
$templatePath = Join-Path $root "site\template.html"
if (-not (Test-Path $templatePath)) { throw "site/template.html not found" }
$template = [IO.File]::ReadAllText($templatePath)

$pages = [ordered]@{}
Get-ChildItem $root -Recurse -File -Filter *.md | Where-Object { $_.FullName -notmatch '\\\.git\\' } | ForEach-Object {
    $rel = $_.FullName.Substring($root.Length + 1).Replace('\', '/')
    $md = [IO.File]::ReadAllText($_.FullName)
    $html = Convert-Md $md
    $firstLine = ($md -split "`n")[0]
    $t = if ($firstLine -match '^#\s+(.+?)\s*$') { $Matches[1] } else { $rel }
    $words = ($md -split '\s+').Count
    $pages[$rel] = @{
        h = $html
        t = $t
        x = Get-PlainText $html
        m = [Math]::Max(1, [Math]::Round($words / 210))
    }
}

$json = ($pages | ConvertTo-Json -Depth 4).Replace('</', '<\/')

# noscript chapter list for crawlers/JS-off visitors
$list = ($pages.Keys | ForEach-Object { '<li>' + ($pages[$_].t -replace '&', '&amp;') + '</li>' }) -join ''
$html = $template.Replace('__PAGES_JSON__', $json).Replace('__NOSCRIPT_LIST__', $list)

$outPath = Join-Path $root "index.html"
[IO.File]::WriteAllText($outPath, $html, (New-Object System.Text.UTF8Encoding($false)))
Write-Output ("Built index.html ({0} KB, {1} pages)" -f [math]::Round((Get-Item $outPath).Length / 1KB), $pages.Count)
