# adding repository and installing nginx		
apt update
apt install nginx -y
cat <<EOT > webapp
upstream vproapp {

 server app01:8080;

}

server {

  listen 80;

location / {

  proxy_pass http://webapp;

}

}

EOT

mv vproapp /etc/nginx/sites-available/webapp
rm -rf /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/webappapp /etc/nginx/sites-enabled/webappapp

#starting nginx service and firewall
systemctl start nginx
systemctl enable nginx
systemctl restart nginx