
FROM node:lts-alpine

LABEL org.opencontainers.image.authors="dalthonmh@gmail.com"
LABEL org.opencontainers.image.description="Minimal Environment: Node, Yarn & Git"

RUN apk add --no-cache git openssh-client
WORKDIR /app

CMD ["sh"]