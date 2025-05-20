FROM jaegertracing/all-in-one:latest

# Corrige o erro da variável
ENV COLLECTOR_ZIPKIN_HOST_PORT=0.0.0.0:9411

# Define a porta principal para Render
ENV PORT=16686

# Exponha todas as portas relevantes
EXPOSE 16686 14268 14250 4317 4318 5778 6831/udp 6832/udp 9411
