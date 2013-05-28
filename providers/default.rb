action :create do
  system_install = false
  install_dir = if ::File.writable?('/opt/oh-my-zsh')
    system_install = true
    '/opt/oh-my-zsh'
  else
    "#{Dir.home(new_resource.user)}/.oh-my-zsh"
  end

  git install_dir do
    repository 'git://github.com/robbyrussell/oh-my-zsh.git'
    user new_resource.user unless system_install
  end

  template "#{Dir.home(new_resource.user)}/.zshrc" do
    variables({
      :system_install => system_install,
      :install_dir => install_dir,
      :theme => new_resource.theme,
      :plugins => new_resource.plugins,
      :zsh_options => new_resource.zsh_options
    })
    cookbook 'oh-my-zsh'
    source '.zshrc.erb'
    mode 00644
    owner new_resource.user
    only_if { ::File.directory?(Dir.home(new_resource.user)) && new_resource.manage_zshrc }
  end

  user new_resource.user do
    shell '/bin/zsh'
    action :manage
  end

  new_resource.updated_by_last_action(true)
end

action :remove do
  user new_resource.user do
    shell '/bin/bash'
    action :manage
  end

  package 'zsh' do
    action :remove
  end

  execute "rm -rf #{install_dir}" do
    only_if { ::File.directory?(install_dir) && !system_install }
  end

  file "#{Dir.home(new_resource.user)}/.zshrc" do
    action :delete
    only_if { new_resource.manage_zshrc }
  end

  new_resource.updated_by_last_action(true)
end
