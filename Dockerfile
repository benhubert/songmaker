FROM debian:buster

RUN apt-get update --allow-releaseinfo-change && apt-get install -y \
        haskell-platform

ADD . /songmaker
RUN cd /songmaker \
    && cabal update \
    && cabal install \
    && cp /songmaker/dist/build/songmaker/songmaker /bin/ \
    && rm -r /songmaker

