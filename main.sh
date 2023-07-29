#!/bin/bash


cd /path/to/the/fugginplace


count=1


for file in *; do
  if [ -f "$file" ]; then
    ext="${file##*.}"
    mv "$file" "${count}.${ext}"
    ((count++))
  fi
done


ls -1 *.mp4 > file_list.txt

echo "Files have been renamed and file_list.txt has been created my dude"
