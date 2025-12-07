" شکل ۴-۳۲a: ینتبنیتب
" figure caption شکل ۴-۳: بشود شکل 4-3
" y/۰۱۲۳۴۵۶۷۸۹/0123456789/
" let e2p = {1: '۱', 2: '۲', 3: '۳', 4:'۴', 5:'۵', 6:'۶', 7:'۷', 8:'۸', 9:'۹', 0:'۰'}
" let p2e = {'۱':1, '۲':2,  '۳':3, '۴':4, '۵':5, '۶':6, '۷':7, '۸':8, '۹':9, '۰':0}

" function! DictGetOrSelf(string)
"     if has_key(a:dict, a:key)
"         return a:dict[a:key]
"     else
"         return a:dict
"     endif
" endfunction

" system('sed y/۰۱۲۳۴۵۶۷۸۹/0123456789/', submatch(0))
.,$s/\vشکل [۰۱۲۳۴۵۶۷۸۹]+-[۰۱۲۳۴۵۶۷۸۹]+:/\=system("sed 'y\/۰۱۲۳۴۵۶۷۸۹\/0123456789\/'", submatch(0))/gc
" %s/\vشکل [۰۱۲۳۴۵۶۷۸۹]+-[۰۱۲۳۴۵۶۷۸۹]+:/\=system("cat", submatch(0))/gc
" or; not flexible; no substitute cmd gc; runs the command on the whole line
" not matched string
" %g/\vشکل [۰۱۲۳۴۵۶۷۸۹]+-[۰۱۲۳۴۵۶۷۸۹]+:/.!sed 'y/۰۱۲۳۴۵۶۷۸۹/0123456789/'
