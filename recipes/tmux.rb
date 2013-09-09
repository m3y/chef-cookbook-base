#
# Cookbook Name:: base
# Recipe:: tmux
#
# Copyright 2013, m3y 
#
# All rights reserved - Do Not Redistribute
#

tar_name = "tmux-1.8"
script 'tmux' do
    interpreter 'bash'
    user 'root'
    cwd Chef::Config['file_cache_path']
    code <<-EOH
      wget http://downloads.sourceforge.net/tmux/#{tar_name}.tar.gz
      tar -zxf #{tar_name}.tar.gz
      (cd #{tar_name} && ./configure && make && make install)
    EOH
end