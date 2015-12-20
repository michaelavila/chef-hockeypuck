#
# Cookbook Name:: hockeypuck
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt::default'

apt_repository 'hockeypuck' do
  uri 'ppa:hockeypuck/unstable'
  distribution 'trusty'
end

package 'hockeypuck' do
  action :install
end

file '/etc/default/hockeypuck' do
  content 'initstart=yes'
end

cookbook_file '/etc/hockeypuck/hockeypuck.conf' do
  source 'hockeypuck.conf'
end

directory '/var/log/hockeypuck' do
  owner node['hockeypuck']['user']
  group node['hockeypuck']['group']
end

poise_service_user node['hockeypuck']['user']

poise_service 'hockeypuck' do
  user node['hockeypuck']['user']
  directory node['hockeypuck']['working_dir']
  command 'hockeypuck -config /etc/hockeypuck/hockeypuck.conf'
end
