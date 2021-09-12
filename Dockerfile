FROM debian:bullseye

RUN apt-get update --allow-releaseinfo-change && apt-get install -y \
        haskell-platform

ADD . /songmaker
RUN cd /songmaker \
    && cabal update \
    && cabal install --install-method=copy --installdir=/bin \
    && rm -r /songmaker

