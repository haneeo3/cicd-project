#!/bin/bash
echo "Running tests..."

OUTPUT=$(.app.sh)

if echo "$OUTPUT" | grep -q "My app is running"; then
    echo "✅ Test passed!"
    exit 0
else
    echo "❌ Test failed!"
    exit 1
fi
