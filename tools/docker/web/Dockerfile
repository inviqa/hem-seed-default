FROM	inviqa/base:latest

MAINTAINER	Kieren Evans <kevans@inviqa.com>

# Add current directory to /var/chef-boot/ for installation via chef solo.
ADD chef/ var/chef-boot/web/

# Change to added chef directory, use berkshelf to install the cookbooks
RUN cd /var/chef-boot/web/ && /opt/chef/embedded/bin/berks vendor -d /var/chef-boot/web/cookbooks

# Run chef solo
RUN chef-solo -c /var/chef-boot/web/solo.rb -j /var/chef-boot/web/solo.json

VOLUME ["/var/log/"]

CMD service php-fpm start && nginx -c /etc/nginx/nginx.conf -g 'daemon off;'

# Expose ports.
EXPOSE 80
EXPOSE 443