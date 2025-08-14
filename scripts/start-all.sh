#!/bin/bash
echo "🚀 Starting all microservices..."
docker-compose up -d
echo "✅ All services started!"
echo ""
echo "🌐 Access points:"
echo "  Frontend: http://localhost:3000"
echo "  API Gateway: http://localhost:80"
echo "  Database: localhost:5432"
