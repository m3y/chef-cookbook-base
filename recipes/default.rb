#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
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
