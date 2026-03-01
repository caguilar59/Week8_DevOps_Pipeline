FROM node:18

WORKDIR /app

# Copy package.json first for caching
COPY package*.json ./
RUN npm install

# Copy all files including app.js and index.html
COPY . .

EXPOSE 3000

CMD ["npm", "start"]