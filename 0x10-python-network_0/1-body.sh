#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Define the URL from the first argument
url="$1"

# Use curl to send a GET request and capture the response with status code check
response=$(curl -s -o /dev/null -w "%{http_code}" "$url")

# Check for successful status code (200)
if [ "$response" -ne 200 ]; then
  echo "Error: Received status code $response. Only displaying body for 200 OK."
  exit 1
fi

# Display the response body
curl -s "$url"

