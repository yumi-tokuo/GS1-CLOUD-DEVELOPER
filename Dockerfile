FROM node:22-alpine

WORKDIR /app

COPY package*.json .

RUN npm install 

COPY . .

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

RUN mkdir -p /usr/src/app && chown -R appuser:appgroup /usr/src/app

USER appuser

EXPOSE 8090

CMD ["npm", "start"]