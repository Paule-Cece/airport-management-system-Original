# ─────────────────────────────────────────────────────────────
#  Airport Management System — Dockerfile
#  Base image : Eclipse Temurin JRE 21 (lightweight, production-grade)
# ─────────────────────────────────────────────────────────────

FROM eclipse-temurin:21-jre-alpine

# Metadata
LABEL maintainer="Airport Management System"
LABEL description="OOP Java Airport Management System"
LABEL version="1.0"

# Working directory inside the container
WORKDIR /app

# Copy the JAR into the container
COPY AirportManagementSystem.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
