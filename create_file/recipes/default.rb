#
# Cookbook Name:: create_file
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

file '/tmp/hello.txt' do
 config_bag = Chef::DataBagItem.load( 'test', 'test' )
  content 'Hello Dev..'
#  content config_bag['text']
end

