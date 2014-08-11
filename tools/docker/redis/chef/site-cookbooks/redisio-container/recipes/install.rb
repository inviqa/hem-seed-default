#
# Cookbook Name:: redisio-container
# Recipe:: install
#
# Copyright (C) 2014 
#
# 
#
include_recipe "redisio::install"
begin
  r = resources(:template => "/etc/init.d/redis6379")
  r.cookbook "redisio-container"
  r.source "redis.init.erb"
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn "could not find template to override!"
end
