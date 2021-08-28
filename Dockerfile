FROM node:7.4-alpine

ENV APP_ROOT=/searchVolume
RUN mkdir ${APP_ROOT} && \
    chmod -R u+x /usr/local/bin && \
    chgrp -R 0 ${APP_ROOT} && \
    chmod -R g=u ${APP_ROOT} /etc/passwd
    
RUN echo "hello world" > ${APP_ROOT}/greeting

VOLUME ["/searchVolume"]

CMD ["sh", "-c", "tail -f /dev/null"]
