FROM node:7.4-alpine

RUN echo "hello world" > /myvol/greeting
VOLUME /myvol

CMD ["sh", "-c", "tail -f /dev/null"]
