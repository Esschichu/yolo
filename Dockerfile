
#Define the base image in our case alphine which offers small size image and vulnerabilities
FROM node:12-alpine

#define the working directory
WORKDIR /usr/src/app

#copy the packages to the working directory
COPY . .

#install dependancies
RUN npm install

#RUN chmod +x /usr/src/app/npm start


#Expose port 3000
#EXPOSE 3000


#DEfine entry point
CMD ["npm", "start"]
