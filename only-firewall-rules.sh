 
sudo firewall-cmd –permanent –add-service=http
sudo firewall-cmd –permanent –add-service=https
sudo firewall-cmd --zone=public --add-service=http
sudo firewall-cmd --zone=public --add-service=https
firewall-cmd --zone=public --add-port=3306/tcp --permanent
sudo systemctl reload firewalld
