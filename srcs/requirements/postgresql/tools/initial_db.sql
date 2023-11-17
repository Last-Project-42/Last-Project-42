CREATE DATABASE IF NOT EXISTS wordpress;
USE wordpress;
CREATE USER IF NOT EXISTS 'eryilmaz'@'%' IDENTIFIED BY 'ulus7474';
GRANT ALL PRIVILEGES ON wordpress.* TO 'eryilmaz'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'ulus7474' WITH GRANT OPTION;
FLUSH PRIVILEGES;


-- Bu SQL betiği, MySQL veritabanı sunucusunda veritabanı ve kullanıcı oluşturma işlemlerini gerçekleştirir. İşte her bir SQL komutunun ne işe yaradığına dair ayrıntılı açıklamalar:
-- 
-- sql
-- Copy code
-- CREATE DATABASE IF NOT EXISTS wordpress;
-- Bu komut, wordpress adında bir veritabanı oluşturur. Eğer bu isimde bir veritabanı zaten varsa, tekrar oluşturulmaz.
-- 
-- sql
-- Copy code
-- USE wordpress;
-- Bu komut, çalışma anında kullanılacak veritabanını seçer. Yani, sonraki komutlar bu veritabanı üzerinde işlem yapar.
-- 
-- sql
-- Copy code
-- CREATE USER IF NOT EXISTS 'eryilmaz'@'%' IDENTIFIED BY 'ulus7474';
-- Bu komut, 'eryilmaz'@'%' adında bir kullanıcı oluşturur. '%' sembolü tüm IP adreslerini ifade eder. Kullanıcının şifresi 'ulus7474' olarak belirlenir.
-- 
-- sql
-- Copy code
-- GRANT ALL PRIVILEGES ON wordpress.* TO 'eryilmaz'@'%';
-- Bu komut, 'eryilmaz'@'%' kullanıcısına wordpress veritabanında tüm yetkileri verir. Bu kullanıcı, tüm IP adreslerinden erişime izinli olacaktır.
-- 
-- sql
-- Copy code
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'ulus7474' WITH GRANT OPTION;
-- Bu komut, root kullanıcısına tüm veritabanları ve tüm IP adreslerinden erişim yetkisi verir. WITH GRANT OPTION ifadesi, bu kullanıcının diğer kullanıcılara yetki verme yetkisine sahip olacağı anlamına gelir.
-- 
-- sql
-- Copy code
-- FLUSH PRIVILEGES;
-- Bu komut, MySQL yetki ayarlarını güncellemek için kullanılır. Yeni yetkilerin hemen etkili olması için gereklidir.
-- 
-- Bu SQL betiği, WordPress için bir veritabanı oluşturur, bir kullanıcı oluşturur ve bu kullanıcıya gerekli yetkileri verir. Aynı zamanda root kullanıcısına da geniş yetkiler vererek MySQL veritabanı sunucusunu yönetme yetkisi sağlar.