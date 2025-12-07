" :%g/\v^(- |1\. )/s/\v\='(' . \=alphap . '[؛.؟]) '/\1\r    - /gc
" convert list para and indent: starting with - or 1.
.,$g/\v^(- |1\. )/s/\v([ابپتثجچحخدذرزسشصضطظعغفقکگلمنوهابپتثجچحخدذرزسشصضطظعغفقکگلمنوهیی][؛.؟]) /\1\r    - /gc

" convert plain para to list items
.,$s/\v([ابپتثجچحخدذرزسشصضطظعغفقکگلمنوهابپتثجچحخدذرزسشصضطظعغفقکگلمنوهیی][؛.؟]) /\1\r- /gc

" convert first plain para sentence to list item. if it is not an img/title/list
" and ends with period and not :
.,$s/\v^[^1!#- ].+\./- &/gc
