" add empty line after headings; not working with multiple subsequent headings
" %s/\v(^#.*)\n(.)/\1\r\r\2/g
" %s/^#.*/&\r/

" rm pandoc preamble
" :%s/\v^---(\n.*)+---\n/
