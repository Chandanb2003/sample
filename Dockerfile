FROM alpine:latest

# Install Java
RUN apk add --no-cache openjdk21

# Verify Java installation
CMD ["java", "-version"]
