" keep table/figure 1
" .,$s/\v\[(.+):(.+)]/[\1]/gc
" complete removal; pd -t beamer writes \caption{}
.,$s/\v\[(.+):(.+)]/[]/gc
