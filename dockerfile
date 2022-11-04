FROM --platform=linux/arm64 node:16-alpine
##Build essentials
RUN apk add git
RUN apk add --no-cache python3 py3-pip
RUN adduser -D quasar
WORKDIR /home/quasar
USER quasar
RUN mkdir ~/.global-modules
RUN npm config set prefix "~/.global-modules"
RUN mkdir work

WORKDIR /home/quasar/work
RUN node -v
RUN yarn -v
RUN yarn global add @quasar/cli
ENV PATH=$PATH:"/home/quasar/.global-modules/bin"
ENTRYPOINT ["/bin/sh"]
