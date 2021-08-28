#FROM ubuntu
#FROM jefferyb/openshift-ubuntu

#RUN mkdir /myvol
#RUN echo "hello world" > /myvol/greeting
#VOLUME /myvol

#CMD ["sh", "-c", "tail -f /dev/null"]




FROM node:7.4-alpine

RUN adduser node root
COPY . /home/node/app
WORKDIR /home/node/app

RUN chmod -R 775 /home/node/app
RUN chown -R node:root /home/node/app

USER 1000

RUN echo "hello world" > /home/node/app/greeting
VOLUME /home/node/app

EXPOSE 8100

CMD ["sh", "-c", "tail -f /dev/null"]
