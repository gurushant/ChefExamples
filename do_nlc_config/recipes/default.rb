#
# Cookbook Name:: do_nlc_config
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

execute "configure blc" do
  command "echo nameserver 8.8.8.8 >> /etc/resolv.conf"
end

remote_file '/root/sublime.tar.bz2' do
  source 'https://download.sublimetext.com/Sublime%20Text%202.0.2%20x64.tar.bz2'
  owner 'root'
  group 'root'
  mode '0700'
  action :create
end

cron 'noop' do
  hour '*'
  weekday '*'
  month '*'
   minute '*/1'
  command 'touch /tmp/test.txt'
end
