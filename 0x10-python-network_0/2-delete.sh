#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Define the URL from the first argument
url="$1"

# Send DELETE request and capture the response with status code
response=$(curl -s -X DELETE "$url")

# Display the response body
echo "$response"
