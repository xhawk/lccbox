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
end
 