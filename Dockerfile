FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install dafny -y
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]