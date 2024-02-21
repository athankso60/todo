# Specify the Node.js v20 base image
FROM node:20-alpine 

# Set the working directory within the container
WORKDIR /app

# Copy your application's package.json and package-lock.json
COPY package*.json ./

# Install dependencies 
RUN npm install

# COPY ./prisma/dev.db ./prisma/dev.db 

# RUN chown node:node ./prisma/dev.db


# # Generate Prisma Client (crucial step)
# RUN npx prisma generate 

# Copy your application source code
COPY . .

# Regenerate Prisma Client (ideally during the build)
RUN npx prisma generate 

RUN npx prisma migrate deploy
# Build your Next.js application
RUN npm run build


# Expose the port your Next.js app will run on (usually 3000)
EXPOSE 3000 

# Command to start your Next.js application
CMD ["npm", "start"]
