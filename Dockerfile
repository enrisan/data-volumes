FROM node:16

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80


# VOLUME [ "/app/feedback" ]
# VOLUME ["/app/node_modules"]
# VOLUME [ "/app/temp" ]

# CMD [ "node", "server.js"]
CMD [ "npm", "start" ]
