FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install dafny -Y
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]