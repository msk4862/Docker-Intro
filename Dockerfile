FROM node:12-stretch

USER node

RUN mkdir /home/node/code

WORKDIR /home/node/code

COPY --chown=node:node . .
# COPY index.js index.js
# ADD --chown=node:node index.js index.js

# executing package-lock.json for installing all dependencies
RUN npm ci

CMD ["node", "index.js"]