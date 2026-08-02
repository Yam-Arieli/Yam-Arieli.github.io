# Project Index

A structured table of contents for this project lives at `.claude/index/`.

## How to Look Things Up

**Finding a file or folder:**
Read `.claude/index/toc.json`. It contains the full folder/file hierarchy.

**Finding a symbol** (function, class, constant, method, type, etc.):
1. Check `toc.json` to identify which files are plausible candidates
2. Read `.claude/index/files/<candidate-path>.json` for those files — it lists every symbol with its line number
3. If not found in the index, fall back to Grep on the source files

## How to Keep the Index Updated

After **creating a new file**: add it to `toc.json` and create its `.claude/index/files/<path>.json`
After **creating a new folder**: add it to `toc.json`
After **adding, removing, or renaming a symbol** in a file: update `.claude/index/files/<path>.json`
After **deleting a file**: remove it from `toc.json` and delete `.claude/index/files/<path>.json`
After **moving or renaming a file**: update `toc.json` and move/rename the corresponding index file

Always update the index **in the same response** as the source code change — never defer it.
