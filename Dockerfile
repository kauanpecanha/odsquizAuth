# Stage 1: Build with Maven
FROM openjdk:21-jdk
WORKDIR /app

COPY target/odsquiz-0.0.1-SNAPSHOT.jar odsquiz-0.0.1.jar
ENTRYPOINT [ "java", "-jar", "odsquiz-0.0.1.jar"]

# Set environment variables (optional fallback)
ENV POSTGRES_URL=jdbc:postgresql://localhost:5432/postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=odsquizAuth