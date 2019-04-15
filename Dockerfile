FROM nginx:${NGINX_VERSION:-latest}

RUN apt-get update && apt-get -y install curl
RUN apt-get install -y gnupg2
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get -y install nodejs

#CMD [ "node", "--version" ]
#CMD [ "npm", "--version" ]


WORKDIR /var/www/express
CMD ["nodejs", "index.js"]

#FROM keymetrics/pm2:latest-alpine

# Bundle APP files
#COPY src src/
#COPY package.json .
#COPY ecosystem.config.js .

# Install app dependencies
#ENV NPM_CONFIG_LOGLEVEL warn
#RUN npm install --production

# Expose the listening port of your app
#EXPOSE 8000

# Show current folder structure in logs
#RUN ls -al -R

#CMD [ "service", "nginx", "start" ]
#CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
