# Multi-stage Node.js example (service)
FROM node:20-alpine AS build
WORKDIR /app
COPY capstone/services/user-service/package*.json ./
RUN npm ci --omit=dev
COPY capstone/services/user-service/ ./

FROM node:20-alpine
WORKDIR /app
COPY --from=build /app ./
EXPOSE 3000
CMD ["node", "app.js"]
