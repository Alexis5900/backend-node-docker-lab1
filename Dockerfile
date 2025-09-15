FROM node:22.18 AS build

WORKDIR /usr/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:22.18-alpine AS runtime
WORKDIR /usr/app
COPY --from=build /usr/app/dist ./dist
COPY --from=build /usr/app/package*.json ./
RUN npm install --only=production
EXPOSE 4000
CMD ["node","dist/main.js"]
