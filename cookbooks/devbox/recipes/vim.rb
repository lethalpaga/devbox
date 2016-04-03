package 'vim-gtk'

username, groupname, home_dir = user_vars

directory node['vim_config']['bundle_dir'] do
  user username
  group groupname
  recursive true
end

vim_config_git 'https://github.com/scrooloose/nerdtree.git'
vim_config_git 'https://github.com/chriskempson/base16-vim.git'
vim_config_git 'https://github.com/mileszs/ack.vim.git'
vim_config_git 'https://github.com/vim-scripts/BufOnly.vim.git'
vim_config_git 'https://github.com/ctrlpvim/ctrlp.vim.git'
vim_config_git 'https://github.com/scrooloose/nerdcommenter.git'
vim_config_git 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
vim_config_git 'https://github.com/majutsushi/tagbar.git'
vim_config_git 'https://github.com/svermeulen/vim-easyclip.git'
vim_config_git 'https://github.com/tpope/vim-fugitive.git'
vim_config_git 'git://github.com/airblade/vim-gitgutter.git'
vim_config_git 'https://github.com/jistr/vim-nerdtree-tabs.git'
vim_config_git 'https://github.com/jpalardy/vim-slime.git'
vim_config_git 'https://github.com/tpope/vim-surround.git'
vim_config_git 'https://github.com/tpope/vim-endwise.git'
vim_config_git 'https://github.com/tpope/vim-dispatch'

directory "#{home_dir}/.vim/swapfiles" do
  user username
  group groupname
end

template "#{home_dir}/.vim/vimrc" do
  source 'vim/vimrc'
  user username
  group groupname
end
