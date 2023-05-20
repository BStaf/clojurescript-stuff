FROM alpine

EXPOSE 9000

RUN apk add clojure curl bash rlwrap

RUN curl -O https://download.clojure.org/install/linux-install-1.11.1.1273.sh
RUN chmod +x linux-install-1.11.1.1273.sh
RUN ./linux-install-1.11.1.1273.sh

WORKDIR /app

CMD ["/bin/ash"]