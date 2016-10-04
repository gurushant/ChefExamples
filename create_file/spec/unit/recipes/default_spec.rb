#
# Cookbook Name:: create_file
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'
describe 'create_file::default' do
context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

it 'creates a file' do    
   expect(chef_run).to create_file('/tmp/hello.txt')  
end
  end
end

