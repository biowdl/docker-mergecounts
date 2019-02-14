FROM alpine:3.9

RUN apk update && \
    apk add R R-dev g++ gcc make && \
    R -e 'install.packages(c("reshape2", "dplyr", "refGenome"), repos="https://cloud.r-project.org/")' && \
    apk del R-dev g++ gcc make
