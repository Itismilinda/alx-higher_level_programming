#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Define the URL from the first argument
url="$1"

# Use curl to send an OPTIONS request and capture the response headers
response=$(curl -s -I -X OPTIONS "$url")

# Extract the Allow header value using grep
allowed_methods=$(echo "$response" | grep -i Allow | awk '{print $2}')

# Check if Allow header is found
if [ -z "$allowed_methods" ]; then
  echo "Error: Allow header not found in response. Server might not support OPTIONS method."
else
  echo "Allowed HTTP methods:"
  # Print each method separated by a newline
  echo "$allowed_methods" | tr ',' '\n'
fi
