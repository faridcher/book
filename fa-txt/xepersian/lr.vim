" surround x$_1$=0, y$_1$=0 in lr{}
" اگر x$_1$=0 باشد بشود \lr{x$_1$=0}
" (comparative analysis)
.,$s/\v\([[:graph:] ]+\)/(\\lr{&})/gc
" .,$s/\v(x|y)\$_1\$\=0/\\lr{&}/gc
" \lr{} English words: how about :graph:
" .,$s/\v(-|\a)+/\\lr{&}/gc
.,$s/\v([آابپتثجچحخدذرزسشصضطظعغفقکگلمنوهی۱۲۳۴۵۶۷۸۹۰] )([[:graph:] ]+[[:graph:]])/\1\\lr{\2}/gc

" undershoot‌ها
" %s/\v(\a+)‌ها/\\lr{\1}‌ها/g
