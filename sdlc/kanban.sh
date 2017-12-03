#/bin/sh
# usage: ./kanban.sh

# fields
file='kanban';
magic='3';#https://youtu.be/aU4pyiB-kq0
edit='vim';
compile='dot';
render='eog';
collect='rm';#garbage

# methods
printf \\033c;

# preprocess the source code; subgraph width & nodal wrapping
# perl is a text processing language, so I suggest we use it

$edit "$file".dot && $compile -Tsvg "$file".dot -o "$file".svg && $render "$file".svg && $collect *.svg;

# escape
exit "$magic";
