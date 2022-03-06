FROM node:16

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

ENV PORT 80

EXPOSE $PORT


# VOLUME [ "/app/feedback" ]
# VOLUME ["/app/node_modules"]
# VOLUME [ "/app/temp" ]

# CMD [ "node", "server.js"]
CMD [ "npm", "start" ]
