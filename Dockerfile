FROM node:10.11-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080

# Pick up the CERN CA bundle
ENV NODE_EXTRA_CA_CERTS /usr/src/app/CERN_Grid_Certification_Authority.ca-bundle
CMD [ "node", "server.js" ]
