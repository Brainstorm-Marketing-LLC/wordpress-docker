wp core download --allow-root
wp config create --dbname=wordpress --dbuser=username --dbpass=kc6jabsmc --dbhost=172.18.0.3:3306 --allow-root
wp core install --url=example.com --title=Example --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com --allow-root