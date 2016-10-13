#
# Cookbook Name:: unzip
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


tar_extract '/tmp/jdk.tar.gz' do
  action :extract_local
  target_dir '/tmp/test'
  creates '/tmp/test/lib'
end

