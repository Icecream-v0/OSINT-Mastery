# Google Like a Pro

Everyone uses Google. Almost nobody uses Google. The difference between the two is
worth more than most paid tools, so learn this file properly.

## The operators

| Operator | What it does | Example |
|---|---|---|
| `"exact phrase"` | Forces exact match | `"john rambo" chicago` |
| `site:` | Restrict to one domain | `site:acme.com email` |
| `-word` | Exclude a term | `jaguar -car` |
| `OR` | Either term | `resume OR cv "data analyst"` |
| `filetype:` / `ext:` | File type filter | `filetype:xlsx password` |
| `intitle:` | Word in page title | `intitle:"index of" backup` |
| `inurl:` | Word in URL | `inurl:admin login` |
| `intext:` | Word in body text | `intext:"confidential" filetype:pdf` |
| `before:` / `after:` | Date ranges | `election results after:2024-01-01` |
| `AROUND(n)` | Words within n words of each other | `"ceo" AROUND(3) "resign"` |
| `related:` | Similar sites | `related:bellingcat.com` |

Combine them. That's where the power is.

## Dorks that earn their keep

Find open directories (people misconfigure servers constantly):

```
intitle:"index of" "backup"
intitle:"index of" ".env"
```

Exposed documents:

```
site:target.com filetype:xlsx
site:target.com filetype:pdf "internal use only"
```

Find someone's profiles across sites:

```
"john smith" (site:linkedin.com/in OR site:x.com OR site:instagram.com)
```

Find documents mentioning an email or name anywhere:

```
"j.smith@target.com" -site:target.com
```

That last pattern is underrated — it finds third parties who published your target's
email in meeting minutes, attendee lists, leaked spreadsheets.

## Things most people don't know

- **Google Cache died in early 2024.** Stop using `cache:` — it's gone. Use the Wayback
  Machine instead (see [website-archives](06-domains-networks/website-archives.md)).
- **Verbatim mode** (Tools → All → Verbatim) stops Google "helpfully" ignoring your
  operators and synonyms. Use it when precision matters.
- **Autosuggest is free intel.** Type a name and see what completes — it reflects real
  search behavior, sometimes revealing nicknames, scandals, or associations.
- **Google Images / Lens** is a search engine too. Reverse searching is covered in
  [the images chapter](05-images-video/reverse-image-search.md) but know that Lens reads text inside images now — signs,
  documents, handwriting.
- **Search by date isn't reliable.** `before:/after:` filters by Google's date guess,
  which is often the crawl date, not publication date. Verify manually.

## Practice drill

Pick any company. In fifteen minutes, using only dorks, find: their org chart hints
(site:linkedin.com/in), exposed files (filetype:), old versions of their site
(archives), and any pastebin/leak mentions. Do this weekly against different targets
until the syntax is muscle memory.
