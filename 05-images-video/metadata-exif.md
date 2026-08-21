# Metadata & EXIF

Metadata is data about data — and files leak it constantly. Sometimes it hands you
GPS coordinates directly. More often it gives timestamps, devices, and authorship.

## EXIF in photos

Exchangeable Image File Format data rides inside JPEGs/TIFFs/RAWs:

- **GPS coordinates** (when location services were on) — the jackpot
- Device make/model, lens, settings
- Exact capture timestamp (including timezone quirks)
- Editing software versions
- Embedded thumbnails — forensically interesting because the thumbnail sometimes
  predates edits, revealing the original image after someone cropped/blacked-out
  regions. Real leaks have happened this way.

## The tools

- **ExifTool** — the industry standard, reads/writes everything. Command line:
  `exiftool photo.jpg`. If you learn one tool from this folder, make it this one.
- **Jeffrey's EXIF Viewer** (online) — ExifTool with a web interface.
- **metadata2go** — quick online checks for video/audio too.

## The reality check

WhatsApp strips EXIF. Facebook strips EXIF. Instagram strips EXIF. Most platforms
scrub metadata on upload — so the technique works mainly on:

- Original files shared directly (email attachments, Discord uploads sometimes,
  file-sharing links, messaging apps that preserve originals)
- Forum uploads by people who don't know better
- Files from breaches/dumps
- Your own evidence collection

Always check. Costs ten seconds when it's absent; wins cases when it's there.

## Document metadata — the underrated sibling

Office documents and PDFs carry their own ghosts:

- Author name, company, machine paths (`C:\Users\jsmith\...`)
- Revision history showing edits and contributors
- Template fingerprints linking documents to organizations
- Hidden comments/tracked changes not visible in print view

Bellingcat has repeatedly identified officials through document metadata in leaked
files. PDFs especially hold revision logs nobody remembers they're publishing.

Tools: ExifTool handles these too; `pdfinfo`; opening docx as zip archives and
reading `docProps/core.xml` directly.

## Video metadata

MP4/MOV containers store device info, GPS (some phones), creation dates. yt-dlp
pulls platform-side metadata separately (upload date, geotags if creator enabled).

## Ethics note, briefly

Reading metadata from a file someone gave you access to: fine. Extracting it to
stalk someone's home address from their selfie: that's the behavior this whole
folder exists to prevent. Coordinates you find should serve the lawful purpose you
documented at the start.
