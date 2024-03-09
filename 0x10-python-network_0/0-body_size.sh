#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Define the URL from the first argument
url="$1"

# Use curl to get the response header size only (-I) and discard everything else (-s)
response=$(curl -sI "$url")

# Extract the Content-Length header value using grep and awk
content_length=$(echo "$response" | grep -i Content-Length | awk '{print $2}')

# Check if Content-Length is found
if [ -z "$content_length" ]; then
  echo "Error: Content-Length header not found in response."
  exit 1
fi

# Print the response body size in bytes
echo "Response body size: $content_length bytes"

