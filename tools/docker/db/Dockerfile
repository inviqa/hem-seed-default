FROM	inviqa/base:latest

MAINTAINER	Kieren Evans <kevans@inviqa.com>

# Add current directory to /var/chef-boot/ for installation via chef solo.
ADD chef/ var/chef-boot/db/

# Change to added chef directory, use berkshelf to install the cookbooks
RUN cd /var/chef-boot/db/ && /opt/chef/embedded/bin/berks vendor /var/chef-boot/db/cookbooks

# Make a MySQL directory for the socket file - TODO: move to cookbook
RUN mkdir /var/lib/mysql-container/ && chmod a+rw /var/lib/mysql-container

# Run chef solo
RUN chef-solo -c /var/chef-boot/db/solo.rb -j /var/chef-boot/db/solo.json

# RUN chown -R mysql:mysql /var/lib/mysql-container

VOLUME ["/var/lib/mysql", "/var/log/"]

ADD start-mysql.sh /usr/local/bin/start-mysql.sh

RUN chmod a+x /usr/local/bin/start-mysql.sh

RUN service mysqld start && service mysqld stop

RUN cp -pR /var/lib/mysql/ /var/lib/mysql-boot/

CMD ["/usr/local/bin/start-mysql.sh"]

EXPOSE 3306
