package 'vim-gtk'
package 'exuberant-ctags'

username, groupname, home_dir = user_vars

# Create the config dirs
directory "#{home_dir}/.vim" do
  user username
  group groupname
end

directory "#{home_dir}/.vim/autoload" do  
  user username
  group groupname
end

# Create the plugin directory
directory node['vim_config']['bundle_dir'] do
  user username
  group groupname
  recursive true
end

# Installs vim and a plugin manager
include_recipe 'vim_config::default'

# Install plugins
vim_config_git 'https://github.com/scrooloose/nerdtree.git'
vim_config_git 'https://github.com/chriskempson/base16-vim.git'
vim_config_git 'https://github.com/mileszs/ack.vim.git'
vim_config_git 'https://github.com/vim-scripts/BufOnly.vim.git'
vim_config_git 'https://github.com/ctrlpvim/ctrlp.vim.git'
vim_config_git 'https://github.com/scrooloose/nerdcommenter.git'
vim_config_git 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
vim_config_git 'https://github.com/majutsushi/tagbar.git'
vim_config_git 'https://github.com/svermeulen/vim-repeat.git'
vim_config_git 'https://github.com/svermeulen/vim-easyclip.git'
vim_config_git 'https://github.com/tpope/vim-fugitive.git'
vim_config_git 'git://github.com/airblade/vim-gitgutter.git'
vim_config_git 'https://github.com/jistr/vim-nerdtree-tabs.git'
vim_config_git 'https://github.com/jpalardy/vim-slime.git'
vim_config_git 'https://github.com/tpope/vim-surround.git'
vim_config_git 'https://github.com/tpope/vim-endwise.git'
vim_config_git 'https://github.com/tpope/vim-dispatch'
vim_config_git 'https://github.com/mileszs/ack.vim'
vim_config_git 'https://github.com/bronson/vim-trailing-whitespace.git'
vim_config_git 'https://github.com/kylef/apiblueprint.vim.git'
vim_config_git 'https://github.com/scrooloose/syntastic'
vim_config_git 'https://github.com/terryma/vim-smooth-scroll.git'
vim_config_git 'https://github.com/dag/vim-fish'
vim_config_git 'https://github.com/rust-lang/rust.vim.git'

# Finish pathogen installation
link "#{home_dir}/.vim/autoload/pathogen.vim" do
  to "#{home_dir}/.vim/bundle/vim-pathogen/autoload/pathogen.vim"
end

# Swap files will be stored there
directory "#{home_dir}/.vim/swapfiles" do
  user username
  group groupname
end

# Customize config file
template "#{home_dir}/.vim/vimrc" do
  source 'vim/vimrc'
  user username
  group groupname
end

link "#{home_dir}/.vimrc" do
  to "#{home_dir}/.vim/vimrc"
  user username
  group groupname
end
