# --- Build (Node 20) ---
FROM node:20 AS build
WORKDIR /src
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# --- Runtime (serveur Node Nuxt/Nitro) ---
FROM node:20-slim
WORKDIR /app
COPY --from=build /src/.output ./.output
ENV HOST=0.0.0.0 PORT=3000 NODE_ENV=production
EXPOSE 3000
CMD ["node", ".output/server/index.mjs"]
