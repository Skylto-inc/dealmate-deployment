#!/bin/bash
echo "🏥 Health checking all services..."
echo ""

services=("user-service:3001" "product-service:8000" "deal-service:8001" "frontend-service:3000")

for service in "${services[@]}"; do
    name=$(echo $service | cut -d: -f1)
    port=$(echo $service | cut -d: -f2)
    
    if curl -s http://localhost:$port/health > /dev/null; then
        echo "✅ $name - healthy"
    else
        echo "❌ $name - unhealthy"
    fi
done
