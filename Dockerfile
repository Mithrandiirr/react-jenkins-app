FROM node:14-alpine

   # Set the working directory
   WORKDIR /app

   # Copy package.json and package-lock.json
   COPY package*.json ./

   # Install dependencies
   RUN npm ci

   # Copy the app source code
   COPY . .

   # Build the React app
   RUN npm run build

   # Expose the port
   EXPOSE 3000

   # Start the app
   CMD ["npm", "start"]