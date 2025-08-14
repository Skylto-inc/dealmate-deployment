# DealMate Deployment Repository

This is your control center for microservices development.

## Quick Start

```bash
# Start all services except frontend (for frontend development)
./scripts/dev-single-service.sh frontend-service

# Then clone and run frontend locally:
git clone https://github.com/Skylto-inc/dealmate-web-ui.git
cd dealmate-web-ui
npm run dev
```

## Available Scripts

- `./scripts/start-all.sh` - Start all services
- `./scripts/stop-all.sh` - Stop all services  
- `./scripts/dev-single-service.sh <service>` - Start all except one service
- `./scripts/health-check.sh` - Check service health

## Service URLs

- Frontend: http://localhost:3000
- API Gateway: http://localhost:80
- User Service: http://localhost:3001
- Product Service: http://localhost:8000
- Deal Service: http://localhost:8001
