#
# Cookbook Name:: base
# Recipe:: tmux
#
# Copyright 2013, m3y 
#
# All rights reserved - Do Not Redistribute
#

package 'libevent-dev'
package 'libncurses5-dev'

tar_name = "tmux-1.8"
script 'tmux' do
    interpreter 'bash'
    user 'root'
    cwd '/tmp'
    code <<-EOH
      wget http://downloads.sourceforge.net/tmux/#{tar_name}.tar.gz
      tar -zxf #{tar_name}.tar.gz
      (cd #{tar_name} && ./configure && make && make install)
    EOH
end
