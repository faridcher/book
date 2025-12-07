" 2 blanklines (new slide) before the last sentece of a para which ends in colon and starts with a list. 
.,$s/\v([?.]) ([^?.]+:)$/\1\r\r\2/gc
