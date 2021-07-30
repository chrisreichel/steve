ECHO ============================
ECHO = BUILDING
ECHO ============================
call mvn -DskipTests=true clean package
call java -jar target\steve.jar
