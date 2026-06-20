# --- Build (Maven + JDK 21) ---
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /src
COPY pom.xml .
RUN mvn -q -B dependency:go-offline
COPY src ./src
RUN mvn -q -B -DskipTests package

# --- Runtime (JRE 21) ---
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /src/target/chahd-backend-*.jar app.jar
# Contenu servi depuis le disque (cours, exercices, problèmes, annales LaTeX + figures)
COPY data ./data
EXPOSE 8081
ENV JAVA_OPTS="-Xmx512m"
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
