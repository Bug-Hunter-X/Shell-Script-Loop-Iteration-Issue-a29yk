#!/bin/bash

# This script attempts to process a list of files, but contains a subtle error.
# It uses a loop with a condition that might not behave as expected.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for i in "${files[@]}"; do
  if [[ -f "$i" ]]; then
    echo "Processing: $i"
    # Process the file here... (Assume some processing logic)
  else
    echo "Error: File $i not found"
  fi
echo "Loop iteration complete. i = $i"
done