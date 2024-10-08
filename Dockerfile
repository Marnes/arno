FROM node:18-alpine AS deploy-arno
WORKDIR /app
COPY ./build ./build
COPY ./node_modules ./node_modules
COPY ./package.json .
COPY ./package-lock.json .
ENV PORT 5050
EXPOSE 5050:5050
CMD ["node", "build"]
