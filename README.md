<!-- This Source Code Form is subject to the terms of the Mozilla Public
   - License, v. 2.0. If a copy of the MPL was not distributed with this
   - file, You can obtain one at https://mozilla.org/MPL/2.0/. -->

# zim 📚
A eclectic userscript library for a brand-new kind of Linux distribution.

## Features
`zim` targets [Debian 12 Bookworm](https://www.debian.org/releases/bookworm/).

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;only validates script dependencies (it does not attempt to resolve them).

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;breaks down component operations into individual script files, when necessary.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;expresses script faults through error codes.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;is annotated with [PEP 350](https://peps.python.org/pep-0350/) codetags.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;is licensed under [MPL 2.0](https://www.mozilla.org/en-US/MPL/2.0/).

## Error Codes

Code | Description
:-- | :--
1 | program failure
2 | package not found
3 | package status unexpected
4 | cannot delete keyring
5 | fingerprint mismatch

## Kudos
🕊️ *In Memoriam [Ian Murdock](https://www.debian.org/doc/manuals/project-history/manifesto.en.html)*
