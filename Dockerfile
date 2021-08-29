FROM node:7.4-alpine

ENV APP_ROOT=/searchVolume
RUN mkdir ${APP_ROOT} && \
    chgrp -R 0 ${APP_ROOT} && \
    chmod -R g=u ${APP_ROOT}
RUN echo "hello world" > ${APP_ROOT}/greeting

ENV APP_ROOT1=/searchVolume1
RUN mkdir ${APP_ROOT1} && \
    chgrp -R 0 ${APP_ROOT1} && \
    chmod -R g=u ${APP_ROOT1}
RUN echo "hello world" > ${APP_ROOT1}/greeting

VOLUME ["/searchVolume"]

CMD ["sh", "-c", "tail -f /dev/null"]
