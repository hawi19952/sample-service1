FROM node:14.18.2 as ts-compiler

WORKDIR /usr/app

COPY package*.json ./
COPY tsconfig*.json ./

RUN npm install

COPY . ./

RUN npm run build
ENV PORT=80

EXPOSE 80

CMD ["npm", "start"]