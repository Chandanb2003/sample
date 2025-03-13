# Build Stage
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .

# Production Stage
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app ./
EXPOSE 8000
CMD ["node", "app.js"]
