%s/	/\&/g
" append \\ to every line except the last
1,$-1s/$/\\\\/
" add hline after header line
1s;.*\n;\\hline\r&\\hline\r;
" add hline after last row; do this in the referencing tex file i.e.: \hline \input{f.tex}\\ \hline
" $s;.*\n;&\\hline;
