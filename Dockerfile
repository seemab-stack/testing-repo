FROM node

WORKDIR /app
COPY . .

ENV MONGO_DB_USERNAME=admin 
ENV MONGO_DB_PWD=password




# set default dir so that next commands executes in /home/app dir

# will execute npm install in /home/app because of WORKDIR
RUN npm install
EXPOSE 3000
# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]
