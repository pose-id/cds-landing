# syntax=docker/dockerfile:1.7
FROM node:22-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json ./
RUN --mount=type=cache,target=/root/.npm \
    npm ci

FROM node:22-alpine AS build
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run build

FROM nginx:1.27-alpine AS runtime
RUN deluser nginx 2>/dev/null || true && \
    addgroup -g 1001 -S cds && \
    adduser -D -S -u 1001 -G cds cds && \
    rm /etc/nginx/conf.d/default.conf && \
    mkdir -p /var/cache/nginx /var/log/nginx /var/run/nginx /run/nginx && \
    chown -R cds:cds /var/cache/nginx /var/log/nginx /var/run/nginx /run/nginx /usr/share/nginx/html && \
    touch /run/nginx.pid && \
    chown cds:cds /run/nginx.pid
COPY --chown=cds:cds nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build --chown=cds:cds /app/dist /usr/share/nginx/html
USER cds
EXPOSE 8080
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
    CMD wget -qO- http://127.0.0.1:8080/ || exit 1
CMD ["nginx", "-g", "daemon off;"]
