#!/bin/bash
# Simple test to verify index.html meta refresh target
file="index.html"

if grep -qi '<meta[^>]*http-equiv="refresh"' "$file"; then
    if grep -qi '/online-cv/' "$file"; then
        echo "PASS: Redirect points to /online-cv/"
        exit 0
    else
        echo "FAIL: Redirect meta tag does not point to /online-cv/"
        exit 1
    fi
else
    echo "FAIL: No meta refresh tag found in $file"
    exit 1
fi
