FROM golang:1.13-alpine AS builder
RUN apk update && apk add make 
ADD . /versus
RUN cd /versus && make
FROM shazow/ethspam:latest AS production
COPY --from=builder /versus/versus /bin/
ADD entrypoint.sh .
RUN apk update && apk add make bash 
ENTRYPOINT ["/bin/bash", "-C" ,"./entrypoint.sh"]
