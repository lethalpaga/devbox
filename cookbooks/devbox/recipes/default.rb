# System configuration
include_recipe 'devbox::repositories'
include_recipe 'devbox::system'
include_recipe 'devbox::x'
include_recipe 'devbox::awesome'
include_recipe 'devbox::base16'

# Application configuration
include_recipe 'devbox::fish'
include_recipe 'devbox::rvm'
include_recipe 'devbox::ruby_gems'
include_recipe 'devbox::vim'
include_recipe 'devbox::golang'

# Install dotfiles after everything has been configured
include_recipe 'devbox::dotfiles'
