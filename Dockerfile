FROM jaegertracing/all-in-one:latest

ENV COLLECTOR_ZIPKIN_HOST_PORT=:9411

EXPOSE 8080 14268 14250 4317 4318 5778 6831/udp 6832/udp 9411

CMD ["--ui-http-port=8080", "--collector.zipkin.host-port=:9411"]
