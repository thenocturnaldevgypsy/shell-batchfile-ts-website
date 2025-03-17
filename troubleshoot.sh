#!/bin/bash

# Prompt user for the website
read -p "Enter the website URL (without http/https): " website

echo "Running troubleshooting tests for $website..."
echo "-------------------------------------------"

# 1. Ping test (10 packets)
echo -e "\n>>> Pinging $website..."
ping -c 10 "$website"

# 2. Traceroute test
echo -e "\n>>> Traceroute to $website..."
traceroute "$website"

# 3. DNS Lookup
echo -e "\n>>> NSLookup for $website..."
nslookup "$website"

# 4. Detailed DNS info
echo -e "\n>>> Dig for $website..."
dig "$website"

# 5. Check if port 80 (HTTP) is open
echo -e "\n>>> Checking if port 80 is open..."
nc -zv "$website" 80

# 6. Get HTTP headers using curl
echo -e "\n>>> Fetching HTTP headers..."
curl -I "http://$website"

echo -e "\n✅ Troubleshooting complete!"
