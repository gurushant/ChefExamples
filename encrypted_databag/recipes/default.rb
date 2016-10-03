#
# Cookbook Name:: encrypted_databag
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

passwords = Chef::EncryptedDataBagItem.load("prod", "passwords")
pwd_1 = passwords["vm-1"]
print "vm-1 password"+pwd_1

pwd_2 = passwords["vm-2"]
print "vm-2 password"+pwd_2


