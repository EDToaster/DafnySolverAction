FROM ubuntu:20.04

RUN apt-get install dafny
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]