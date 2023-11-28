#!/bin/bash

# CSV file to store the multimap
csv_file="multimap.csv"

# Function to add values to the multimap CSV file
add_to_multimap_csv() {
    key="$1"
    value="$2"
    
    # Create the CSV file with a header if it doesn't exist
    if [ ! -f "$csv_file" ]; then
        echo "Key,Values" > "$csv_file"
    fi
    
    # Append the key-value pair to the file
    echo "$key,$value" >> "$csv_file"
}

# Example: Adding values to the multimap CSV file
add_to_multimap_csv "key1" "value1"
add_to_multimap_csv "key1" "value2"
add_to_multimap_csv "key2" "value3"
add_to_multimap_csv "key2" "value4"
add_to_multimap_csv "key3" "value5"

# Example: Iterating through the multimap CSV file
tail -n +2 "$csv_file" | while IFS=, read -r key values; do
    echo "Key: $key, Values: $values"
done
