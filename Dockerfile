FROM openjdk:17-jdk-alpine

# Expose le port de l'application Spring Boot
EXPOSE 8081
# Ajoute le livrable Spring Boot dans l'image
ADD target/jwt-0.0.1-SNAPSHOT.jar jwt-0.0.1-SNAPSHOT.jar

# Commande d'exécution de l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/jwt-0.0.1-SNAPSHOT.jar"]