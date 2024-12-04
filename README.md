## О проекте

Этот проект представляет собой результат выполнения тестового задания на позицию "Разработчик Laravel" в компании Qortex. В рамках этого задания был собран с помощью Laravel каталог исполнителей и их альбомов с песнями такой структуры:
    Исполнитель
        -Название
    Альбом
        -Исполнитель
        -Год выпуска
    Песня
        -Название
        -Порядковый номер в альбоме (номер трека)
Одна и та же песня может быть включена в несколько альбомов, но под разными порядковыми номерами.
В качестве площадки для демонстрации API подключен Swagger. 
Проект демонстрирует навыки работы с фреймворком Laravel, знание современных подходов к разработке веб-приложений и умение решать задачи в соответствии с требованиями заказчика. :-)

Рабочая версия проекта расположена на виртуальной машине по адресу http://51.250.26.94/
Swagger API документация для Postman расположена по адресу http://51.250.26.94/api/documentation

## Инструкция по запуску
1 Установите веб-сервер (Apache2, Nginx), PHP, MySQL. 
Cкопируйте код проекта Git в корневую дирреторию сайта (например, /var/www/html):

    cd /var/www/html
    git clone https://github.com/sup5213/my-qortex-test.git

2 Установите Composer
    
    cd /var/www/html/my-qortex-test
    composer install

3 Создайте БД и пользовтаеля
    mysql -u root -p
        CREATE DATABASE qortex_test;
        CREATE USER 'testuser'@'localhost' 
        IDENTIFIED BY '1234';
        GRANT ALL ON qortex_test.* TO 'testuser'@'localhost';
        FLUSH PRIVILEGES;QUIT;

4 Скопируйте .env.example в .env и настройте параметры подключения к БД
    APP_NAME=Qortex_trial
    APP_ENV=local
    APP_KEY=
    APP_DEBUG=true
    APP_URL=http://51.250.26.94/my-qortex-test/public

    LOG_CHANNEL=stack
    LOG_DEPRECATIONS_CHANNEL=null
    LOG_LEVEL=debug

    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=qortex_test
    DB_USERNAME=testuser
    DB_PASSWORD=1234
    ...

5 Выполните миграцию
	cd /var/www/html/my-qortex-test
	php artisan migrate
и сгенерируйте ключ приложения:
	php artisan key:generate

6 Почистите кэши   
	php artisan route:clear   !!
	php artisan cache:clear !!
	php artisan config:cache !!

P.S. 
	php artisan route:cache --- не выполнять, хотя многие советуют!!!!!!!!

7 Назначте владельца и права доступа
	sudo chown -R www-data:www-data /var/www/html/my-qortex-test
	sudo chmod -R 775 /var/www/html/my-qortex-test/storage 

8 Подредактируйте основной файл конфигурации веб-сервера
cd /etc/apache2/sites-available
	000-default.conf
должен быть:
<VirtualHost *:80>
	ServerName my-qortex-test
	ServerAdmin admin@example.com
	DocumentRoot /var/www/html/my-qortex-test/public
	<Directory /var/www/html/my-qortex-test/public>
		AllowOverride All
		Require all granted
	</Directory>
</VirtualHost>
выполните команды:
	sudo a2ensite 000-default.conf
	sudo a2enmod rewrite
	sudo systemctl restart apache2
9. Подправьте файл .htaccess в папке public
    /var/www/html/my-qortex-test/public/.htaccess
    должен быть:
    <IfModule mod_rewrite.c>
        RewriteEngine On
        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteCond %{REQUEST_URI} (.+)/$
        RewriteRule ^ %1 [L,R=301]
        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteCond %{REQUEST_FILENAME} !-f
        RewriteRule ^ index.php [L]
    </IfModule>

10. Добавьте в БД данные из файла database_dump.sql	

11. Зайдите на сайт, вроде должен работать.
