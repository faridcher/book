#! /usr/bin/env -S awk -f
{
  # if a blank line is already found and cur record (immediate line after record) is not a title line, print title
  if (blank==1 && !/^#/) {
     print ti
  }
  blank=0
  if (/^#/) { ti=$0 }
  else if (/^$/) { blank=1}
  print
}
