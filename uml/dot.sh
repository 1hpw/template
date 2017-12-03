#/bin/sh
# usage: ./dot.sh filename
# filename from filename.dot

# fields
file="$1";
magic='3';#https://youtu.be/aU4pyiB-kq0
edit='vim';
compile='dot';
render='eog';
collect='rm';#garbage

# methods
printf \\033c && $edit "$file".dot && $compile -Tsvg "$file".dot -o "$file".svg && $render "$file".svg && $collect *.svg;

# escape
exit "$magic";
