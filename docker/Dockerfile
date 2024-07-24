FROM node:20-alpine AS builder

WORKDIR /app

COPY ./ ./

RUN npm install
RUN npm run build

FROM nginx:alpine

COPY --from=builder /app/dist /app/dist
COPY --from=builder /app/docker/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
