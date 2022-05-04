########################################################################################################################
# 1. build
# docker build -t toowis/node-hello-world .
# 
# 2. run
# docker run -d -p 3080:80 --name node-hello-world toowis/node-hello-world
########################################################################################################################
FROM node:lts-slim

ENV APP_HOME /hello-world

# Install Modules:
WORKDIR $APP_HOME

# Copy in files:
COPY . $APP_HOME

EXPOSE    80
CMD       ["node", "index.js"]

