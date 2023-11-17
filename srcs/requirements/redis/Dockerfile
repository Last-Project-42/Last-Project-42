FROM debian:buster

RUN		apt-get update
RUN		apt-get install -y redis \
		&& rm -rf /var/lib/apt/lists/*

COPY ./tools/redis.sh /tmp/redis.sh

EXPOSE 6379

CMD ["sh", "/tmp/redis.sh"]





# Bu Docker dosyası, Debian Buster tabanlı bir Docker görüntüsü oluşturmayı ve içerisinde Redis veritabanı sunucusunu kurup başlatmayı otomatikleştirmeyi amaçlar. İşte bu dosyanın her bir bölümünün ne işe yaradığına dair açıklamalar:
#
# Dockerfile
# Copy code
# FROM debian:buster
# Bu satır, Debian Buster tabanlı bir Docker görüntüsü oluşturulacağını belirtir.
#
# Dockerfile
# Copy code
# RUN apt-get update
# Bu komut, paket listesini günceller. Bu, yeni paketlerin ve güncellemelerin alınmasını sağlar.
#
# Dockerfile
# Copy code
# RUN apt-get install -y redis \
    # && rm -rf /var/lib/apt/lists/*
# Bu komut, Redis paketini kurar. -y bayrağı, herhangi bir onay istemeden kurulumu gerçekleştirir. Daha sonra, paket listelerini temizler. Bu, gereksiz disk alanı kullanımını önler.
#
# Dockerfile
# Copy code
# COPY ./tools/redis.sh /tmp/redis.sh
# Bu komut, yerel dizindeki redis.sh betiğini Docker görüntüsünün /tmp/ yoluna kopyalar. Bu betik, Redis sunucusunu başlatma işlemlerini içerir.
#
# Dockerfile
# Copy code
# EXPOSE 6379
# Bu satır, Docker konteynerinin 6379 numaralı portu dışarıya açılmasını belirtir. Bu, Redis veritabanı sunucusunun varsayılan portudur.
#
# Dockerfile
# Copy code
# CMD ["sh", "/tmp/redis.sh"]
# Bu komut, Docker konteyneri başlatıldığında otomatik olarak çalıştırılacak komutu belirtir. Bu komut, redis.sh betiğini çalıştırarak Redis sunucusunu başlatır.
#
# Bu Docker dosyası, Debian Buster tabanlı bir çevre içinde Redis veritabanı sunucusunu kurmayı ve başlatmayı otomatikleştiren bir yapı oluşturur.
