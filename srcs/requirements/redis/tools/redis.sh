#!/bin/sh

if [ ! -f "/etc/redis/redis.conf.bak" ]; then

    # redis.conf dosyasının yedeğini al
    cp /etc/redis/redis.conf /etc/redis/redis.conf.bak

    # Bu satırları değiştir
    sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis/redis.conf
    sed -i "s|# maxmemory <bytes>|maxmemory 2mb|g" /etc/redis/redis.conf
    sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis/redis.conf

fi

# Redisi harici bağlantılara izin vererek çalıştırır
redis-server --protected-mode no




# Bu betik, bir Docker konteyneri içinde Redis adlı veritabanı yönetim sistemini yapılandırma ve başlatma işlemlerini otomatikleştirmek amacıyla kullanılıyor gibi görünüyor. İşte betiğin her bir bölümünün ne işe yaradığına dair açıklamalar:
#
# bash
# Copy code
# !/bin/sh
# Bu satır, betiğin "sh" kabuk betiği olduğunu belirtir.
#
# bash
# Copy code
# if [ ! -f "/etc/redis/redis.conf.bak" ]; then
# Bu ifade, /etc/redis/redis.conf.bak dosyasının var olup olmadığını kontrol eder. Eğer bu dosya henüz oluşturulmadıysa, içeriye girer ve Redis yapılandırma dosyasını düzenleme işlemlerini yapar.
#
# bash
# Copy code
# cp /etc/redis/redis.conf /etc/redis/redis.conf.bak
# Bu komut, Redis yapılandırma dosyasının yedeğini alır.
#
# bash
# Copy code
# sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis/redis.conf
# Bu komut, Redis yapılandırma dosyasındaki bind satırını yorumlar. Yani, Redis'in sadece yerel sunucuda değil, harici bağlantılara da izin vermesini sağlar.
#
# bash
# Copy code
# sed -i "s|# maxmemory <bytes>|maxmemory 2mb|g" /etc/redis/redis.conf
# Bu komut, Redis yapılandırma dosyasındaki maxmemory ayarını değiştirir. Bu durumda, Redis'in en fazla 2 megabayt hafıza kullanmasına izin verir.
#
# bash
# Copy code
# sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis/redis.conf
# Bu komut, Redis yapılandırma dosyasındaki maxmemory-policy ayarını değiştirir. Bu durumda, Redis hafıza dolu olduğunda, en eski anahtarları (allkeys-lru) bellekten atma politikasını kullanır.
#
# bash
# Copy code
# redis-server --protected-mode no
# Bu komut, Redis sunucusunu koruma modunu devre dışı bırakarak çalıştırır. Bu, harici bağlantılara izin verir.
#
# Bu betik, Redis veritabanı sunucusunu özel ayarlarla ve harici bağlantılara izin vererek çalıştırmak için kullanılır.
#
#
#
#
#
