describe_recipe 'oh-my-zsh' do

  it 'installs oh-my-zsh prerequisites' do
    %w{ git zsh }.each { |obj| assert_sh "which #{obj}" }
  end

end
