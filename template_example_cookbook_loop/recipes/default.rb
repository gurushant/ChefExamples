#
# Cookbook Name:: template_example_cookbook_loop
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

template "/etc/apache2/config.conf" do
	source "template.erb"
	variables(:ports=>[20,30])
end
