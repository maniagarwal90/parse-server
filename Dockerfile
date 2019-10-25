FROM node:latest

RUN mkdir parse

ADD . /parse
WORKDIR /parse
RUN npm install

ENV APP_ID parse_app_id_starter
ENV MASTER_KEY 1234567890  
ENV DATABASE_URI mongodb://mongo:27017/dev

# Optional (default : 'parse/cloud/main.js')
# ENV CLOUD_CODE_MAIN cloudCodePath

# Optional (default : '/parse')
# ENV PARSE_MOUNT mountPath

EXPOSE 1337

# Uncomment if you want to access cloud code outside of your container
# A main.js file must be present, if not Parse will not start

# VOLUME /parse/cloud               

CMD [ "npm", "start" ]
