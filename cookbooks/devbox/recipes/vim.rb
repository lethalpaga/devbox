package 'vim-gtk'

username = node['devbox']['user']
groupname = node['devbox']['group']

directory node['vim_config']['bundle_dir'] do
  user username
  group groupname
  recursive true
end

vim_config_git 'https://github.com/scrooloose/nerdtree.git'