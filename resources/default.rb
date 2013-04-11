actions :create, :remove
default_action :create

attribute :user, :kind_of => String, :name_attribute => true
attribute :manage_zshrc, :kind_of => [TrueClass, FalseClass], :default => true
attribute :theme, :kind_of => String
attribute :plugins, :kind_of => Array
attribute :zsh_options, :kind_of => Array
