FROM node:20-slim

WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
ENV DEVELOPER_NAME="Wayne Wei"
CMD ["node", "./src/index.js"]