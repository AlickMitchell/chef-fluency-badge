#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postrgesql-setup initdb'
	action :nothing
end

service 'postresql' do
	action [:enable, :start]
end
