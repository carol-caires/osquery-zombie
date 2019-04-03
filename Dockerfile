FROM kolide/osquery AS osquery

COPY . /tmp
WORKDIR /tmp

RUN sudo apt-get update && sudo apt-get install build-essential -y
RUN gcc -o zombie zombie.c
RUN rm zombie.c