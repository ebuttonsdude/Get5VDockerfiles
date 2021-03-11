# /bin/bash

mysql -u root -p $MYSQL_ROOT_PASSWORD -e \
	"CREATE DATABASE GET5; \
	CREATE USER 'get5_user'@'localhost' IDENTIFIED BY $MYSQL_USER_PASSWORD; \
	GRANT ALL PRIVILEGES ON get5.* TO 'get5_user'@'localhost'; \
	FLUSH PRIVILEGES;"

echo requirepass $REDIS_PASSWORD > /etc/redis/redis.conf
service redis-server restart
