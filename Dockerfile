# Stage 1: Build Caddy with extra modules
FROM caddy:2.10.2-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/WeidiDeng/caddy-cloudflare-ip

# Stage 2: Copy the built Caddy binary into a clean image
FROM caddy:2.10.2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy