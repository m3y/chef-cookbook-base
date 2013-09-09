#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2013, m3y 
#
# All rights reserved - Do Not Redistribute
#

include_recipe "build-essential"
include_recipe "vim"

package "git"
package "tig"
package "curl"
package "exuberant-ctags"
package "w3m"
