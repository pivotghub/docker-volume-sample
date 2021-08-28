FROM ubuntu

RUN mkdir /myvol
RUN echo "hello world" > /myvol/greeting
VOLUME /myvol

CMD ["sh", "-c", "tail -f /dev/null"]
