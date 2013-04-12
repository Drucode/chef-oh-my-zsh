default['oh-my-zsh']['users'] = {
  'vagrant' => {
    'theme' => 'gentoo',
    'plugins' => %w{ git },
    'zsh_options' => [
      'export EDITOR=vim',
      'setopt NO_CORRECT_ALL'
    ]
  }
}
