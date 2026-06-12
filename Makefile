.PHONY: preview

preview:
	LAST_DISPLAY_ESSAY=$$(git log -1 --format=%cd --date=format:"%-d %B %Y" -- essay.md); \
	LAST_ISO_ESSAY=$$(git log -1 --format=%cd --date=format:"%Y-%m-%d" -- essay.md); \
	FIRST_DISPLAY_ESSAY=$$(git log --follow --reverse --format=%cd --date=format:"%Y" -- essay.md | head -n 1); \
	FIRST_ISO_ESSAY=$$(git log --follow --reverse --format=%cd --date=format:"%Y-%m-%d" -- essay.md | head -n 1); \
	pandoc essay.md \
	--standalone \
	--template=assets/template/template.html \
	--citeproc \
	--csl=https://www.zotero.org/styles/apa \
	--toc \
	--metadata last_updated="$$LAST_DISPLAY_ESSAY" \
	--metadata last_updated_iso="$$LAST_ISO_ESSAY" \
	--metadata year_first_published="$$FIRST_DISPLAY_ESSAY" \
	--metadata first_published_iso="$$FIRST_ISO_ESSAY" \
	--output=preview.html

	LAST_DISPLAY_HOWTO=$$(git log -1 --format=%cd --date=format:"%-d %B %Y" -- howto.md); \
	LAST_ISO_HOWTO=$$(git log -1 --format=%cd --date=format:"%Y-%m-%d" -- howto.md); \
	FIRST_DISPLAY_HOWTO=$$(git log --follow --reverse --format=%cd --date=format:"%Y" -- howto.md | head -n 1); \
	FIRST_ISO_HOWTO=$$(git log --follow --reverse --format=%cd --date=format:"%Y-%m-%d" -- howto.md | head -n 1); \
	pandoc howto.md \
	--standalone \
	--template=assets/template/template.html \
	--citeproc \
	--csl=https://www.zotero.org/styles/apa \
	--toc \
	--metadata last_updated="$$LAST_DISPLAY_HOWTO" \
	--metadata last_updated_iso="$$LAST_ISO_HOWTO" \
	--metadata year_first_published="$$FIRST_DISPLAY_HOWTO" \
	--metadata first_published_iso="$$FIRST_ISO_HOWTO" \
	--output=howto.html