@test "it sets the shell to zsh" {
  getent passwd vagrant | cut -d ':' -f 7 | grep zsh
}

@test "it installs oh-my-zsh" {
  test -d /home/vagrant/.oh-my-zsh
}
