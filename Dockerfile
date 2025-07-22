# Stage 1: Build with Maven
FROM openjdk:21-jdk-alpine
WORKDIR /app

COPY target/live-0.0.1-SNAPSHOT.jar app-1.0.0.jar
ENTRYPOINT [ "java", "-jar", "app-1.0.0.jar" ]

# Set environment variables (optional fallback)
ENV POSTGRES_URL=jdbc:postgresql://localhost:5432/postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=odsquizAuth