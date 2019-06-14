FROM node:8

# Create app directory
WORKDIR /usr/src/app

ENV LD_LIBRARY_PATH /instantclient_18_5
COPY instantclient_18_5 $LD_LIBRARY_PATH

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]