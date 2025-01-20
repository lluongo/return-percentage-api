FROM openjdk:21-jdk-slim
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY target/return-percentage*.jar return-percentage-api.jar
RUN chmod 755 /app/return-percentage-api.jar
EXPOSE 8091
RUN adduser --system --group --uid 1001 appuser
USER appuser
CMD ["java", "-jar", "/app/return-percentage-api.jar"]