# flyway-migration demo
flyway database migration demo
# Pre-requisites to run application
- install openjdk11 if not exist. 
- install docker
 
Note: change classpath database jar dependencies and database authentication details

# db setup using docker compose
docker-compose -f docker/docker-compose.yml up

# flyway goals or tasks
### gradle
- migrate: **gradlew flywayMigrate**,Migrate a database. 
- clean: **gradlew flywayClean**,Drops all objects in the configured schemas. 
- info: **gradlew flywayInfo**,Prints the details and status information about all the migrations. 
- validate: **gradlew flywayValidate**,Validates the applied migrations against the ones available on the specified locations. 
- undo: **gradlew flywayUndo**, Undoes the most recently applied versioned migration (not supported in community edition) 
- baseline: **gradlew flywayBaseline**, Baselines an existing database, excluding all migrations up to and including baselineVersion 
- repair:	**gradlew flywayRepair**, Repairs the schema history table 
### maven
- migrate: **mvnw flyway:migrate**, Migrate a database. 
- clean: **mvnw flyway:clean**,Drops all objects in the configured schemas. 
- info: **mvnw flyway:info**,Prints the details and status information about all the migrations. 
- validate: **mvnw flyway:validate**,Validates the applied migrations against the ones available on the specified locations. 
- undo: **mvnw flyway:undo**, Undoes the most recently applied versioned migration (not supported in community edition) 
- baseline: **mvnw flyway:baseline**, Baselines an existing database, excluding all migrations up to and including baselineVersion 
- repair:	**mvnw flyway:repair**,Repairs the schema history table 