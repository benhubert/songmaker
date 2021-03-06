Songmaker
===========
Utilities for generating `.tex` files out of `.sng` files, which t hen can be
used with LaTeX/songs.sty

Easiest way for running this, is by using the docker image:

    docker run -ti -rm \
           -u $(id -u):$(id -g) \
           -v path/to/sng/dir:/songs \
           benhub/songmaker:latest songmaker /songs

