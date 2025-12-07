" decimal delimiter in vim and pdf
" 4.1 to 4٫1
" ۴.۱ to ۴٫۱

%s/\v([۰۱۲۳۴۵۶۷۸۹[:digit:]]+)\.([۰۱۲۳۴۵۶۷۸۹[:digit:]]+)/\1٫\2/gc
" Inline (in-text) equation numberings ۴.۱ (or 4.1) in vim look ۱.۴ in pdf, hence \lr{}
" در رابطه ۱.۴ ملاحظه می‌شود. همه را مشابه بالا ممیز فارسی بزن
" %s/\v([۰۱۲۳۴۵۶۷۸۹[:digit:]]+)\.([۰۱۲۳۴۵۶۷۸۹[:digit:]]+)/\\lr{&}/gc
