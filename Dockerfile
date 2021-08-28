FROM node:7.4-alpine

USER root
RUN mkdir /searchVolume
RUN echo "hello world" > /searchVolume/greeting
RUN chown solr:solr /searchVolume
USER solr
VOLUME /searchVolume

CMD ["sh", "-c", "tail -f /dev/null"]
