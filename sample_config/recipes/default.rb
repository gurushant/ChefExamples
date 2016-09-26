#
# Cookbook Name:: sample_config
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

template '/etc/config.conf' do
	begin
  		config_bag = Chef::DataBagItem.load( 'config', 'conf_1' )
		rescue
  			Chef::Log.fatal("Could not find the 'main' item in the 'config_bag' data bag - Raising fatal error!!")
  		raise
	end
	source 'config.erb'
	variables(:log_level=>config_bag['log_level'],:stdout=>config_bag['target'],:log_file_path=>config_bag['log_file_path'],:max_file=>config_bag['max_file_size'],:max_backup_index=>config_bag['max_backup_index'])
	
end
