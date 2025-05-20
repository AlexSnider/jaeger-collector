FROM jaegertracing/all-in-one:latest

# Define a porta usada para receber traces via protocolo Zipkin
ENV COLLECTOR_ZIPKIN_HOST_PORT=:9411

# Expõe as portas comumente usadas:
# 16686 - UI Web
# 14268 - HTTP para envio de spans via Jaeger
# 14250 - gRPC para agentes
# 4317 - OTLP (gRPC)
# 4318 - OTLP (HTTP)
# 5778 - Configurações para agentes
# 6831/6832 - UDP para recebimento de spans via agente

EXPOSE 16686 14268 14250 4317 4318 5778 6831/udp 6832/udp 9411

