# Dockerfile
FROM docker.io/node:18 as build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

FROM docker.io/nginx:1.25.5-alpine as production

ARG VITE_BACKEND_HOST
ARG VITE_BACKEND_PORT

ENV VITE_BACKEND_HOST=$VITE_BACKEND_HOST
ENV VITE_BACKEND_PORT=$VITE_BACKEND_PORT

COPY --from=build /app/dist /usr/share/nginx/html