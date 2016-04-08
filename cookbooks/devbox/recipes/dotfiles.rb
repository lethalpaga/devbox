username, groupname, home_dir = user_vars

template "#{home_dir}/.vimperatorrc" do
  source "vimperator/.vimperatorrc"
  user username
  group groupname
end

template "#{home_dir}/.gitconfig" do
  source "git/gitconfig"
  user username
  group groupname
end
