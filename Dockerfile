FROM node:12

# prep directory, we have to chown since we're using the node user
RUN mkdir -p /haste
RUN chown node:node /haste
WORKDIR /haste

# install dependencies
COPY package*.json ./
RUN npm install

# use the node user rather than root
USER node

# copy the rest of the haste-server files
COPY --chown=node:node . .

# run our start script
CMD ["npm", "start"]