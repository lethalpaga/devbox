def user_vars
  username = node['devbox']['user']
  groupname = node['devbox']['group']
  home_dir = "/home/#{username}"
  
  return username, groupname, home_dir
end