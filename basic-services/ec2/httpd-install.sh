sudo yum update -y

yum install httpd -y
service httpd start
chconfig httpd on

cd /var/www/html
sudo vi index.html

# Copy some HTML sample on the internet then paste here

# Save index.html file