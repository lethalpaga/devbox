# System configuration
include_recipe 'devbox::system'
include_recipe 'devbox::x'
include_recipe 'devbox::awesome'
include_recipe 'devbox::base16'

# Application configuration
include_recipe 'devbox::rvm'
include_recipe 'devbox::vim'
include_recipe 'devbox::golang'
