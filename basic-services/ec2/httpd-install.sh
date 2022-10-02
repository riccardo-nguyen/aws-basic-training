sudo yum update -y

sudo yum install httpd -y
sudo service httpd start
sudo systemctl enable httpd

cd /var/www/html

sudo vi index.html

# Copy some HTML sample on the internet then paste here

# Save index.html file