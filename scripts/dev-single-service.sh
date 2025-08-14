#!/bin/bash
SERVICE_TO_EXCLUDE=$1

if [ -z "$SERVICE_TO_EXCLUDE" ]; then
    echo "Usage: ./dev-single-service.sh <service-name>"
    echo "Example: ./dev-single-service.sh frontend-service"
    exit 1
fi

echo "🚀 Starting all services EXCEPT $SERVICE_TO_EXCLUDE"
echo "You can now run $SERVICE_TO_EXCLUDE locally for development"

# Start all services except the specified one
docker-compose up -d --scale $SERVICE_TO_EXCLUDE=0

echo ""
echo "✅ Services started. Now clone and run $SERVICE_TO_EXCLUDE locally:"
echo "git clone https://github.com/Skylto-inc/dealmate-$(echo $SERVICE_TO_EXCLUDE | sed 's/-service//')"
