#!/bin/bash

if [ ! -f /etc/nginx/ssl/nginx.crt ]; then
echo "Nginx: setting up ssl ...";
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=TR/ST=KOCAELI/L=GEBZE/O=42Kocaeli/CN=eryilmaz.42.fr";
echo "Nginx: ssl is set up!";
fi

exec "$@"


# 
# Bu betik, bir Docker konteyneri içinde Nginx web sunucusu için SSL sertifikası oluşturmayı otomatikleştirmek amacıyla kullanılır. İşte betiğin her bir satırının ne işe yaradığına dair detaylı açıklamalar:
# 
# bash
# Copy code
# !/bin/bash
# Bu satır, betiğin "bash" kabuk betiği olduğunu belirtir.
# 
# bash
# Copy code
# if [ ! -f /etc/nginx/ssl/nginx.crt ]; then
# Bu ifade, /etc/nginx/ssl/nginx.crt dosyasının var olup olmadığını kontrol eder. Eğer bu dosya henüz oluşturulmadıysa, içeriye girer ve SSL sertifikasını oluşturmak için gerekli komutları çalıştırır.
# 
# bash
# Copy code
# echo "Nginx: setting up ssl ...";
# Bu satır, SSL sertifikasının oluşturulduğunu belirten bir mesajı ekrana yazdırır.
# 
# bash
# Copy code
# openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=TR/ST=KOCAELI/L=GEBZE/O=42Kocaeli/CN=eryilmaz.42.fr";
# Bu komut, OpenSSL aracılığıyla bir öz imzalı (self-signed) SSL sertifikası oluşturur. Parametreler açıklamaları aşağıdaki gibidir:
# 
# -x509: X.509 sertifikası oluştur.
# -nodes: Sertifikaya şifreleme eklememe seçeneği.
# -days 365: Sertifika süresini 365 gün olarak belirtir.
# -newkey rsa:4096: RSA algoritması ve 4096-bit uzunlukta anahtar oluşturur.
# -keyout /etc/nginx/ssl/nginx.key: Özel anahtar dosyasının yolu ve adı.
# -out /etc/nginx/ssl/nginx.crt: Sertifika dosyasının yolu ve adı.
# -subj "/C=TR/ST=KOCAELI/L=GEBZE/O=42Kocaeli/CN=eryilmaz.42.fr": Sertifikada yer alacak konu (subject) bilgileri.
# bash
# Copy code
# echo "Nginx: ssl is set up!";
# Bu satır, SSL sertifikasının başarıyla oluşturulduğunu belirten bir mesajı ekrana yazdırır.
# 
# bash
# Copy code
# fi
# Bu ifadenin sonu, yukarıdaki if koşulunun kapanışını belirtir.
# 
# bash
# Copy code
# exec "$@"
# Bu ifade, betiği çalıştıran komutu belirtir. Bu, Docker konteyneri içindeki diğer komutları çalıştırmak için kullanılır.
# 
# Bu betik, /etc/nginx/ssl/nginx.crt dosyası varsa SSL sertifikasının tekrar oluşturulmasını engeller. Eğer sertifika dosyası yoksa, öz imzalı bir SSL sertifikası oluşturur ve Nginx için kullanılacak hale getirir.
# 
# 
# 
# 
# 