#!/bin/sh
echo "waiting Front Server ..."
while ! nc -z filrouge-server-backend 8095 ; do
    echo "Waiting for upcoming backend Server"
    sleep 2
done
echo "starting java front server..."
cd /opt/filrougeFront
ls -la
ping filrouge-server-backend -c 4
exec java $JAVA_OPTS -jar frontServer-0.0.1-SNAPSHOT.jar -Dspring.config.location="."
