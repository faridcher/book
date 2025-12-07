" use pandoc +lists_without_preceding_blankline
" rm empty line between a sentence: and first list item
%s/\v:\n\n([-1])/:\r\1/
