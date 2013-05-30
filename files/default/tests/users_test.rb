describe_recipe 'oh-my-zsh::users' do

  it 'sets the shell to zsh' do
    assert_sh "getent passwd vagrant | cut -d ':' -f 7 | grep zsh"
  end

  it 'installs oh-my-zsh' do
    assert ::File.directory?('/home/vagrant/.oh-my-zsh')
  end

end
