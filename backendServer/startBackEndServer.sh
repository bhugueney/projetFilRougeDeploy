#!/bin/sh
echo "waiting database Server ..."
while ! nc -z filrouge-server-database-postgresql 5432 ; do
    echo "Waiting for upcoming Database Server"
    sleep 2
done
echo "starting java backend server..."
cd /opt/filrougebackend
ls -la
ping filrouge-server-database-postgresql -c 4
exec java $JAVA_OPTS -jar FilRouge-0.0.1-SNAPSHOT.jar -Dspring.config.location="."
