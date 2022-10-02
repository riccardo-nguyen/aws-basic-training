yum update -y

yum install httpd -y
service httpd start
systemctl enable httpd

cd /var/www/html
echo "<html>" > index.html

echo "<h1>Welcome to MyWebsite</h1>" >> index.html
echo "<h4>You are running instance from this IP (This is for testing purpose only, you should not public this to user):</h4>"

echo "<br>Private IP: " >> index.html
curl http://169.254.169.254/latest/meta-data/local-ipv4 >> index.html

echo "<br>Public IP: " >> index.html
curl http://169.254.169.254/latest/meta-data/public-ipv4 >> index.html 

echo "</html>" >> index.html