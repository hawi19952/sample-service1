FROM node:14.18.2 as ts-compiler

WORKDIR /usr/app

COPY package*.json ./
COPY tsconfig*.json ./

RUN npm install

COPY . ./

RUN npm run build
ENV PORT=3000

EXPOSE 3000

CMD ["npm", "start"]