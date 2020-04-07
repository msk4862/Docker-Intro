FROM node:12-stretch

USER node

RUN mkdir /home/node/code

WORKDIR /home/node/code

# To use cached node modules 
COPY --chown=node:node package-lock.json package.json ./

# executing package-lock.json for installing all dependencies
RUN npm ci

COPY --chown=node:node . .
# COPY index.js index.js
# ADD --chown=node:node index.js index.js

EXPOSE 3000

CMD ["node", "index.js"]