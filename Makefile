preview:
	LATEST=$$(git log -1 --format=%cd --date=format:"%-d %B %Y"); \
    FIRST=$$(git log --reverse --format=%cd --date=format:"%Y" -- essay.md | head -n 1); \
	pandoc essay.md \
	--standalone \
	--template=assets/template/template.html \
	--citeproc \
	--csl=https://www.zotero.org/styles/apa \
	--toc \
	--metadata last_updated="$$LATEST" \
	--metadata first_published="$$FIRST" \
	--output=preview.html