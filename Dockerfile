FROM node:4-alpine
ENV NODE_ENV "production"
ENV PORT 8079
EXPOSE 8079
RUN addgroup mygroup && adduser -D -G mygroup myuser && mkdir -p /usr/src/app && chown -R myuser /usr/src/app

USER myuser

COPY . /usr/src/app

# Start the app
CMD ["/usr/local/bin/npm", "start"]