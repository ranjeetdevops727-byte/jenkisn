#!/bin/bash

echo "Running application tests..."

if [ -f "index.html" ]; then
    echo "PASS: index.html exists"
else
    echo "FAIL: index.html not found"
    exit 1
fi

if grep -q "Jenkins CI/CD" index.html; then
    echo "PASS: Jenkins CI/CD text found"
else
    echo "FAIL: Expected text not found"
    exit 1
fi

echo "All tests passed!"