FROM debian:buster

RUN apt-get update && apt-get install -y \
        haskell-platform

ADD . /songmaker
RUN cd /songmaker \
    && cabal update \
    && cabal install \
    && cp /songmaker/dist/build/songmaker/songmaker /bin/

