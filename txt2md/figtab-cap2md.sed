#! /usr/bin/env -S sed -E -f
# Table 4.1 or Table 4-1: Caption
# localize tabs/1-fa.tex
# \\centering\n{\\tiny \1\2\3\\\\}\n\\input{tabs/\2-fa.tex}, }
s;^(Table|جدول) ([[:digit:]]{0,2}[-.]?)([[:digit:]]{1,2}):(.*);![\1 \2\3:\4](tabs/\3.jpg);
s;^(Figure|شکل) ([[:digit:]]{0,2}[-.]?)([[:digit:]]{1,2}):(.*);![\1 \2\3:\4](figs/\3.jpg);

# /^(Figure|شکل) [[:digit:]]{1,2}[-.]?[[:digit:]]{0,2}: /{G; s;(^[^.]+[.-])([[:digit:]]+)(.+)\n# (.+);\\begin{frame}[c]{\4}\n\\centering\n\\includegraphics[height=0.8\\textheight]{figs/\2.jpg}\\\\\n{\\tiny \1\2\3\\\\}\n\\end{frame}; }
