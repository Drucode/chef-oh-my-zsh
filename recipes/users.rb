#
# Cookbook Name:: oh-my-zsh
# Recipe:: users
#
# Copyright 2013, SendGrid
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'oh-my-zsh'

node['oh-my-zsh']['users'].each do |user, options|
  oh_my_zsh user do
    theme options['theme'] unless options['zsh_options'].nil?
    plugins options['plugins'] unless options['plugins'].empty?
    zsh_options options['zsh_options'] unless options['zsh_options'].empty?
    only_if "id #{user}"
  end
end
