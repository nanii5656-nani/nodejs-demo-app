# Dockerfile
FROM mcr.microsoft.com/playwright/node:18-bullseye

WORKDIR /usr/src/app

COPY package.json package-lock.json* ./
RUN npm install --production

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
