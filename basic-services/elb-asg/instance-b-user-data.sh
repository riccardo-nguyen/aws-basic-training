#!/bin/bash
yum install httpd -y
service httpd start
systemctl enable httpd

cd /var/www/html
echo "<html>" > index.html

echo "<h1>Welcome to MyWebsite - Instance B</h1>" >> index.html
echo "<h3>You are running instance from this IP:</h3>" >> index.html

echo "<br>Private IP: " >> index.html
curl http://169.254.169.254/latest/meta-data/local-ipv4 >> index.html

echo "<br>Public IP: " >> index.html
curl http://169.254.169.254/latest/meta-data/public-ipv4 >> index.html 

echo "</html>" >> index.html