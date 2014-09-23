#
# Cookbook Name:: nginx-https
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#
include_recipe "nginx"

resources(:template => "nginx.conf").instance_exec do
  cookbook "nginx-https"
end
