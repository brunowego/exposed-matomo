# Exposed Matomo

## Running

```sh
docker run -d \
  $(echo "$DOCKER_RUN_OPTS") \
  -h matomo-mysql \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_USER=matomo \
  -e MYSQL_PASSWORD=matomo \
  -e MYSQL_DATABASE=matomo \
  -v matomo-mysql-data:/var/lib/mysql \
  -p 3306:3306 \
  --name matomo-mysql \
  --restart always \
  docker.io/library/mysql:5.7
```

```sh
docker exec -i matomo-mysql /bin/sh << 'EOSHELL'
cat << 'EOF' > /etc/mysql/conf.d/increase.cnf
[mysqld]
max_allowed_packet = 128M

EOF
EOSHELL
```

```sh
docker restart matomo-mysql
```

```sh
docker exec -i matomo-mysql /usr/bin/mysql -u root -p'root' -ve 'SET GLOBAL general_log = "ON"'

docker exec -i matomo-mysql /usr/bin/tail -f /var/lib/mysql/matomo-mysql.log
```

```sh
docker run -d \
  $(echo "$DOCKER_RUN_OPTS") \
  -h matomo \
  -e MATOMO_DATABASE_HOST=matomo-mysql \
  -e MATOMO_DATABASE_ADAPTER=MYSQLI \
  -e MATOMO_DATABASE_TABLES_PREFIX=matomo_ \
  -e MATOMO_DATABASE_USERNAME=matomo \
  -e MATOMO_DATABASE_PASSWORD=matomo \
  -e MATOMO_DATABASE_DBNAME=matomo \
  -v matomo-data:/var/www/html \
  -p 8080:80 \
  --name matomo \
  --restart always \
  --link matomo-mysql \
  docker.io/library/matomo:3.13.0-apache
```

```sh
echo -e '[INFO]\thttp://127.0.0.1:8080'
```

## Onboarding

1. Welcome! -> Next
2. System Check -> Next
3. Database Setup -> Next
4. Creating the Tables

   ```sh
   mysqldump \
     --skip-comments \
     --skip-extended-insert \
     -h 127.0.0.1 \
     -P 3306 \
     -u matomo \
     -p'matomo' \
     --databases matomo \
     > ./sql/01-initial.sql
   ```

   - Next
5. Super User
   - Super user login: `admin`
   - Password: `Pa$$w0rd!`
   - Password (repeat): `Pa$$w0rd!`
   - Email: `admin@example.com`
   - Next

   ```sh
   mysqldump \
     --skip-comments \
     --skip-extended-insert \
     -h 127.0.0.1 \
     -P 3306 \
     -u matomo \
     -p'matomo' \
     --databases matomo \
     > ./sql/02-user.sql
   ```

   ```sh
   icdiff ./sql/01-initial.sql ./sql/02-user.sql
   ```

6. Setup a Website
   - Website name: Example
   - Website URL: [http://example.com](http://example.com)
   - Website time zone: Brazil - Sao Paulo
   - Next

   ```sh
   mysqldump \
     --skip-comments \
     --skip-extended-insert \
     -h 127.0.0.1 \
     -P 3306 \
     -u matomo \
     -p'matomo' \
     --databases matomo \
     > ./sql/03-website.sql
   ```

   ```sh
   icdiff ./sql/02-user.sql ./sql/03-website.sql
   ```

7. Tracking code for Example -> Next
8. Congratulations -> Continue to Matomo

## Dashboard

```sh
docker exec -i matomo ./console config:set \
  --section='General' \
  --key='enable_trusted_host_check' \
  --value='0'
```

```sh
mysqldump \
  --skip-comments \
  --skip-extended-insert \
  -h 127.0.0.1 \
  -P 3306 \
  -u matomo \
  -p'matomo' \
  --databases matomo \
  > ./sql/04-login.sql
```

```sh
icdiff ./sql/03-website.sql ./sql/04-login.sql
```

1. Sign in
   - Username or Email: `admin`
   - Password: `Pa$$w0rd!`
   - Sign In

   ```sh
   mysqldump \
     --skip-comments \
     --skip-extended-insert \
     -h 127.0.0.1 \
     -P 3306 \
     -u matomo \
     -p'matomo' \
     --databases matomo \
     > ./sql/05-logged.sql
   ```

   ```sh
   icdiff ./sql/04-login.sql ./sql/05-logged.sql
   ```

2. No data has been recorded yet, get set up below
   - Don't show this message for the next hour

   ```sh
   mysqldump \
     --skip-comments \
     --skip-extended-insert \
     -h 127.0.0.1 \
     -P 3306 \
     -u matomo \
     -p'matomo' \
     --databases matomo \
     > ./sql/06-dashboard.sql
   ```

   ```sh
   icdiff ./sql/05-logged.sql ./sql/06-dashboard.sql
   ```

   - Disable Browser Archiving:

   ```sh
   gtime -v docker exec -i matomo php \
     -d memory_limit=8G \
     ./console config:set \
       'General.browser_archiving_disabled_enforce=1' \
       'General.time_before_today_archive_considered_outdated=86400' \
       'General.enable_browser_archiving_triggering=0' \
       'General.archiving_range_force_on_browser_request=0'
   ````

### Visit

```sh
# postkid -run-curl ./requests/visit-get.yaml
postkid -run-curl ./requests/visit-post.yaml
```

```sh
mysqldump \
  --skip-comments \
  --skip-extended-insert \
  -h 127.0.0.1 \
  -P 3306 \
  -u matomo \
  -p'matomo' \
  --databases matomo \
  > ./sql/07-visit.sql
```

```sh
icdiff --encoding=ISO8859 ./sql/06-dashboard.sql ./sql/07-visit.sql
```

```sh
gtime -v docker exec -i matomo php \
  -d memory_limit=8G \
  ./console core:archive \
    --url http://127.0.0.1 \
    --force-idsites 1 \
    --php-cli-options='-d memory_limit=8G'
```

```sh
mysqldump \
  --skip-comments \
  --skip-extended-insert \
  -h 127.0.0.1 \
  -P 3306 \
  -u matomo \
  -p'matomo' \
  --databases matomo \
  > ./sql/08-visit-archive.sql
```

```sh
icdiff --encoding=ISO8859 ./sql/07-visit.sql ./sql/08-visit-archive.sql
```

### Event

```sh
postkid -run-curl ./requests/event.yaml
```

```sh
mysqldump \
  --skip-comments \
  --skip-extended-insert \
  -h 127.0.0.1 \
  -P 3306 \
  -u matomo \
  -p'matomo' \
  --databases matomo \
  > ./sql/09-event.sql
```

```sh
icdiff --encoding=ISO8859 ./sql/08-visit-archive.sql ./sql/09-event.sql
```

```sh
gtime -v docker exec -i matomo php \
  -d memory_limit=8G \
  ./console core:archive \
    --url http://127.0.0.1 \
    --force-idsites 1 \
    --php-cli-options='-d memory_limit=8G'
```

```sh
mysqldump \
  --skip-comments \
  --skip-extended-insert \
  -h 127.0.0.1 \
  -P 3306 \
  -u matomo \
  -p'matomo' \
  --databases matomo \
  > ./sql/10-event-archive.sql
```

```sh
icdiff --encoding=ISO8859 ./sql/09-event.sql ./sql/10-event-archive.sql
```

## Rollback

```sh
mysql \
  -h 127.0.0.1 \
  -P 3306 \
  -u root \
  -p'root' \
  matomo \
  < ./sql/05-logged.sql
```

## Shutdown

```sh
docker rm -f matomo-mysql matomo
docker volume rm matomo-mysql-data matomo-data
```
