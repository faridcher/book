#! /usr/bin/env -S awk -f
# replace the \items with trailing % with dashes as long as the replaced text plus a constant
{
  if ($0 ~ /\\item .+%$/) {
     # %*s in a dynamic way, what the width of the field is:
     s=sprintf("%*s", length + extra , "")
     gsub(/ /,"-",s)
     print "\\item "s
   }
   # not starting with \item but ends with %
   else if ($0 ~ /.+%$/) {
     s=sprintf("%*s", length + extra , "")
     gsub(/ /,"-",s)
     print s
   }
  else if ($0 ~ /^%$/) {
    print "\\end{document}"
    exit 1
  }
  else print
}
