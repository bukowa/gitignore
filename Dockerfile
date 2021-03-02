FROM alpine as base

RUN apk update \
    && apk add -f findutils git bash \
    && rm -rf /var/cache/apk/*

RUN printf '#!/bin/bash \n \
    find . \
    | git check-ignore --no-index  --stdin \
    | xargs -n1 -t "$@"' \
    > /usr/local/bin/gitignore

RUN chmod +x /usr/local/bin/gitignore

WORKDIR /app
ENTRYPOINT ["/bin/bash", "gitignore"]
CMD ["echo"]
