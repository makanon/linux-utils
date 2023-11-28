#!/bin/bash

# File to store the multimap
multimap_file="multimap.txt"

# Function to add values to the multimap file
add_to_multimap_file() {
    key="$1"
    value="$2"
    
    # Check if the file exists
    if [ ! -f "$multimap_file" ]; then
        touch "$multimap_file"
    fi
    
    # Append the key-value pair to the file
    echo "$key $value" >> "$multimap_file"
}

# Example: Adding values to the multimap file
add_to_multimap_file "key1" "value1"
add_to_multimap_file "key1" "value2"
add_to_multimap_file "key2" "value3"
add_to_multimap_file "key2" "value4"
add_to_multimap_file "key3" "value5"

# Example: Iterating through the multimap file
while IFS= read -r line; do
    key=$(echo "$line" | cut -d ' ' -f 1)
    value=$(echo "$line" | cut -d ' ' -f 2)
    echo "Key: $key, Value: $value"
done < "$multimap_file"
