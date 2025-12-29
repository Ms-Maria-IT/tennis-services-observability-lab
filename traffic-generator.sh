#!/bin/bash

# Tennis API Traffic Generator
API="http://localhost:8080"
echo "🎾 Generating test traffic..."

for i in {1..30}; do
  # Random endpoint selection
  case $((RANDOM % 4)) in
    0) curl -s "$API/api/clubs" ;;
    1) curl -s "$API/api/users" ;;
    2) curl -s "$API/api/tournaments" ;;
    3) curl -s "$API/actuator/health" ;;
  esac
  sleep $((RANDOM % 2 + 1))
done
echo "✅ Traffic generation complete"
