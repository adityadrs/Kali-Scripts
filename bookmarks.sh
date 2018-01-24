#!/bin/bash
#--- Bookmarks
file=/root/.gtk-bookmarks; [ -e "${file}" ] && cp -n $file{,.bkup}
([[ -e "${file}" && "$(tail -c 1 ${file})" != "" ]]) && echo >> "${file}"
grep -q '^file:///dev/sdb4 ' "${file}" 2>/dev/null \
  || echo 'file:///dev/sdb4 "Windows Storage"' >> "${file}"
