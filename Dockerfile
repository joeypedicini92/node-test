FROM node:12.18.1

ENV PORT 3000

EXPOSE 3000

RUN npm install typescript -g

COPY package.json package.json
RUN npm install

COPY . .
RUN npm run build

CMD ["npm", "run", "serve"]