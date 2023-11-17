FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server mariadb-client

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/initial_db.sql /var/www/

RUN chmod +x /var/www/initial_db.sql

RUN service mysql start && mysql < /var/www/initial_db.sql && rm -f /var/www/initial_db.sql;

CMD [ "mysqld" ]




# Bu Docker dosyası, bir Debian Buster tabanlı Docker görüntüsü oluşturmak için kullanılır ve içerisinde MariaDB veritabanı sunucusunu kurmayı ve ilk başlangıç veritabanını yaratmayı otomatikleştirmek amacıyla tasarlanmıştır. İşte betiğin her bir parçasının ne işe yaradığına dair ayrıntılı açıklamalar:
# 
# Dockerfile
# Copy code
# FROM debian:buster
# Bu satır, Debian Buster tabanlı bir Docker görüntüsü oluşturulacağını belirtir.
# 
# Dockerfile
# Copy code
# RUN apt-get update && apt-get install -y mariadb-server mariadb-client
# Bu satır, apt-get update ile paket listesini günceller ve mariadb-server ile mariadb-client paketlerini kurar.
# 
# Dockerfile
# Copy code
# EXPOSE 3306
# Bu komut, Docker konteynerinin 3306 numaralı portu dışarıya açılmasını belirtir. Bu, MariaDB veritabanı sunucusunun varsayılan portudur.
# 
# Dockerfile
# Copy code
# COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
# Bu komut, yerel dizindeki 50-server.cnf dosyasını Docker görüntüsünün /etc/mysql/mariadb.conf.d/ yoluna kopyalar. Bu dosya, MariaDB sunucusunun yapılandırma ayarlarını belirtir.
# 
# Dockerfile
# Copy code
# COPY ./tools/initial_db.sql /var/www/
# Bu komut, yerel dizindeki initial_db.sql dosyasını Docker görüntüsünün /var/www/ yoluna kopyalar. Bu dosya, ilk başlangıç veritabanı yaratma SQL komutlarını içerir.
# 
# Dockerfile
# Copy code
# RUN chmod +x /var/www/initial_db.sql
# Bu komut, initial_db.sql dosyasını çalıştırılabilir hale getirir.
# 
# Dockerfile
# Copy code
# RUN service mysql start && mysql < /var/www/initial_db.sql && rm -f /var/www/initial_db.sql;
# Bu satır, MySQL servisini başlatır ve ardından /var/www/initial_db.sql dosyasındaki SQL komutlarını MariaDB veritabanında çalıştırır. Son olarak, initial_db.sql dosyasını siler.
# 
# Dockerfile
# Copy code
# CMD [ "mysqld" ]
# Bu komut, Docker konteyneri başlatıldığında varsayılan olarak çalıştırılacak komutu belirtir. Bu durumda, MariaDB veritabanı sunucusunu başlatır.