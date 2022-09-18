FROM node:16 AS Builder

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

FROM node:16.0.0-slim
WORKDIR /app
# Bundle app source
COPY --from=Builder /usr/src/app/ /app/

EXPOSE 3000
CMD ["node", "index.js"]