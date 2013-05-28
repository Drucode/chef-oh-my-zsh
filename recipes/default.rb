#
# Cookbook Name:: oh-my-zsh
# Recipe:: default
#
# Copyright 2013, SendGrid
#
# All rights reserved - Do Not Redistribute
#
%w{
  git
  zsh
}.each { |obj| include_recipe obj }
