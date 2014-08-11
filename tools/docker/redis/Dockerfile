FROM	inviqa/base:latest

MAINTAINER	Kieren Evans <kevans@inviqa.com>

# Add current directory to /var/chef-boot/ for installation via chef solo.
ADD chef/ var/chef-boot/redis/

RUN cd /var/chef-boot/redis/ && /opt/chef/embedded/bin/bundle install

# Change to added chef directory, use berkshelf to install the cookbooks
RUN cd /var/chef-boot/redis/ && PATH="$PATH:/opt/chef/embedded/bin" /opt/chef/embedded/lib/ruby/gems/1.9.1/bundler/gems/berkshelf-3dd8f4ca919c/bin/berks vendor /var/chef-boot/redis/cookbooks

# Run chef solo
RUN chef-solo -c /var/chef-boot/redis/solo.rb -j /var/chef-boot/redis/solo.json

VOLUME ["/var/log/"]

CMD ["/usr/bin/redis-server"]

# Expose ports.
EXPOSE 6379
