FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-yaml \
    git

COPY feed.py /usr/bin/feed.py

COPY --chmod=775 entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
