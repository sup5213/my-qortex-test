## О проекте
&emsp;Этот проект представляет собой результат выполнения тестового задания на позицию "Разработчик Laravel" в компании Qortex. В рамках этого задания был собран с помощью Laravel каталог исполнителей и их альбомов с песнями такой структуры:       
    **Исполнитель**<br>
        &emsp;-Название<br>
    **Альбом**<br>
        &emsp;-Исполнитель<br>
        &emsp;-Год выпуска<br>
    **Песня**<br>
        &emsp;-Название<br>
        &emsp;-Порядковый номер в альбоме (номер трека)<br>
&emsp;Одна и та же песня может быть включена в несколько альбомов, но под разными порядковыми номерами.  
В качестве площадки для демонстрации API подключен Swagger. 
Проект демонстрирует навыки работы с фреймворком Laravel, знание современных подходов к разработке веб-приложений и умение решать задачи в соответствии с требованиями заказчика. :-)

Рабочая версия проекта расположена на виртуальной машине по адресу http://51.250.26.94/ <br> 
Swagger API документация для Postman расположена по адресу http://51.250.26.94/api/documentation

## Инструкция по запуску
1. Установите веб-сервер (Apache2, Nginx), PHP, MySQL.<br>
Cкопируйте код проекта Git в корневую директорию сайта (например, /var/www/html):<br>
    `cd /var/www/html`<br>
    `git clone https://github.com/sup5213/my-qortex-test.git`

2. Установите Composer<br>
    `cd /var/www/html/my-qortex-test`<br>
    `composer install`

3. Создайте БД и пользователя<br>
    `mysql -u root -p`<br>
   ```
        CREATE DATABASE qortex_test;
        CREATE USER 'testuser'@'localhost' 
        IDENTIFIED BY '1234';
        GRANT ALL ON qortex_test.* TO 'testuser'@'localhost';
        FLUSH PRIVILEGES;QUIT;

4. Скопируйте .env.example в .env и настройте параметры подключения к БД<br>
    ```
    APP_NAME=Qortex_trial
    APP_ENV=local
    APP_KEY=
    APP_DEBUG=true
    APP_URL=http://<ваш ip>/my-qortex-test/public

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

5. Выполните миграцию<br>
   `cd /var/www/html/my-qortex-test`<br>
	`php artisan migrate`<br>
и сгенерируйте ключ приложения:<br>
	`php artisan key:generate`

6. Почистите кэши<br>
	`php artisan route:clear`<br>
	`php artisan cache:clear`<br>
	`php artisan config:cache`<br>
<b>P.S.</b><br>
	**php artisan route:cache --- не выполнять, хотя многие советуют!!!!!!!!**

7. Назначьте владельца и права доступа<br>
	`sudo chown -R www-data:www-data /var/www/html/my-qortex-test`<br>
	`sudo chmod -R 775 /var/www/html/my-qortex-test/storage`<br>

8. Подредактируйте основной файл конфигурации веб-сервера<br>
    `cd /etc/apache2/sites-available`<br>
	`000-default.conf`<br>
должен быть:<br>
```
<VirtualHost *:80>
    ServerName my-qortex-test
	ServerAdmin admin@example.com
	DocumentRoot /var/www/html/my-qortex-test/public
	<Directory /var/www/html/my-qortex-test/public>
		AllowOverride All
		Require all granted
	</Directory>
</VirtualHost>
```
9. Выполните команды:<br>
	`sudo a2ensite 000-default.conf`<br>
	`sudo a2enmod rewrite`<br>
	`sudo systemctl restart apache2`<br>
10. Подправьте файл .htaccess в папке public<br>
    `/var/www/html/my-qortex-test/public/.htaccess`<br>
    должен быть:
```
    <IfModule mod_rewrite.c>
        RewriteEngine On
        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteCond %{REQUEST_URI} (.+)/$
        RewriteRule ^ %1 [L,R=301]
        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteCond %{REQUEST_FILENAME} !-f
        RewriteRule ^ index.php [L]
    </IfModule>
```
10. Добавьте в БД данные из файла database_dump.sql	

11. Зайдите на сайт, вроде должен работать.
