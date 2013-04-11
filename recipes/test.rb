#
# Cookbook Name:: oh-my-zsh
# Recipe:: test
#
# Copyright 2013, SendGrid
#
# All rights reserved - Do Not Redistribute
#
oh_my_zsh 'vagrant' do
  theme 'gentoo'
  plugins [ 'git' ]
  zsh_options []
end
