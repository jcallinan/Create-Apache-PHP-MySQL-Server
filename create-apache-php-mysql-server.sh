sudo dnf update
sudo dnf install httpd
sudo systemctl enable httpd.service
sudo systemctl start httpd.service
sudo systemctl status httpd.service

sudo dnf install php php-common
sudo dnf install https://repo.mysql.com//mysql80-community-release-fc31-1.noarch.rpm

sudo dnf install mysql-community-server
sudo systemctl start mysqld
sudo systemctl enable mysqld

sudo grep 'temporary password' /var/log/mysqld.log

sudo mysql_secure_installation

sudo dnf install php-mysqlnd php-xml php-json php-gd php-mbstring
sudo firewall-cmd –permanent –add-service=http
sudo firewall-cmd –permanent –add-service=https
sudo firewall-cmd --zone=public --add-service=http
sudo firewall-cmd --zone=public --add-service=https
firewall-cmd --zone=public --add-port=3306/tcp --permanent
sudo systemctl reload firewalld
