FROM node:16-alpine

ARG UID=${UID}

ARG GID=${GID}

ARG UNAME=${UNAME}

RUN apk update

RUN deluser node && rm -rf /home/node 

RUN addgroup -g ${GID} -S ${UNAME} && adduser -u ${UID} -S ${UNAME} -G ${UNAME}

USER ${UID}

WORKDIR /home/${UNAME}/

COPY ./package/package*.json /home/${UNAME}/

RUN npm ci

RUN mkdir /home/${UNAME}/prisma