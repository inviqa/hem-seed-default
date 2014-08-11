FROM	centos:centos6

MAINTAINER	Kieren Evans <kevans@inviqa.com>

# Based on https://github.com/paulczar/docker-chef-solo/blob/master/Dockerfile but for centos and doing the chef client install now rather than earlier

# Install Chef
RUN curl -L https://www.opscode.com/chef/install.sh | bash

# Install Berkshelf
# First install gcc (with c++), tar and perl, so we can compile native gem extensions
RUN yum install -y make gcc gcc-c++ tar	perl
RUN /opt/chef/embedded/bin/gem install berkshelf --no-ri --no-rdoc

# Add current directory to /var/chef-boot/ for installation via chef solo.
RUN mkdir /var/chef-boot/
ADD chef/ /var/chef-boot/base/

# Install git as some of our Berkshelf dependencies require it
RUN yum install -y git

# Change to added chef directory, use berkshelf to install the cookbooks
RUN cd /var/chef-boot/base/ && /opt/chef/embedded/bin/berks vendor /var/chef-boot/cookbooks

# Run chef solo
RUN chef-solo -c /var/chef-boot/base/solo.rb -j /var/chef-boot/base/solo.json

# ENTRYPOINT ["/bin/bash"]
# CMD ["-l"]