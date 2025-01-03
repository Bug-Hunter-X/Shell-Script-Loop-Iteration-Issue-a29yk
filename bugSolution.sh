#!/bin/bash

# This script is a corrected version of the buggy script.
# It addresses the potential issue with loop iteration and file processing.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for i in "${!files[@]}"; do
  file="${files[i]}"
  if [[ -f "$file" ]]; then
    echo "Processing: $file"
    # Process the file here... (Assume some processing logic)
  else
    echo "Error: File $file not found"
  fi
done