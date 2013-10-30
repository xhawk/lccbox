#
# Cookbook Name:: lcc
# Recipe:: default
#
# Copyright 2013, Siili Solutions
#
# All rights reserved - Do Not Redistribute
#

#####
# Check out sources from git
####

git "/lcc" do
  repository "git@github.com:xhawk/lcc.git"
  revision "master"
  action :sync
  user "vagrant"
end
 
### 
# install knome packages
###
execute "npm install" do
  command "npm install -d"
  cwd "/lcc"
end


###
# change ownership of npm to vagrant so that sudo npm comes reduntant
###
directory "/usr/local/bin" do
  owner "vagrant"
  group "vagrant"
  recursive true
end

directory "/usr/local/lib/node_modules/npm/bin" do
  owner "vagrant"
  group "vagrant"
  recursive true
end

directory "/home/vagrant/tmp" do
  owner "vagrant"
  group "vagrant"
  recursive true
end

directory "/home/vagrant/.node-gyp" do
  owner "vagrant"
  group "vagrant"
  recursive true
end

directory "/home/vagrant/.npm" do
  owner "vagrant"
  group "vagrant"
  recursive true
end

#npm_package "bower" do
#  action :install
#end

#npm_package "grunt" do
#  action :install
#end

#npm_package "grunt-cli" do
#  action :install
#end
