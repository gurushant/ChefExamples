#
# Cookbook Name:: sample_template
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

template '/tmp/name.txt' do
	begin
  		nameBag = Chef::DataBagItem.load( 'name_bag', 'main' )
		rescue
  			Chef::Log.fatal("Could not find the 'main' item in the 'nameBag' data bag - Raising fatal error!!")
  		raise
	end
	source 'template.erb'
	variables(:first=>nameBag['first'],:middle=>nameBag['middle'],:last=>nameBag['last'])
end
