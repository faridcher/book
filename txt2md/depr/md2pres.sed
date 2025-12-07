#! /usr/bin/env -S sed -E -f
# rm empty line between a sentence: and first list item
/:$/{N; s/\n$//}

# squeeze leading #
s/^#+ /# /

# rm pandoc preamble
/^---$/{:x N; /\n---$/d; bx}
