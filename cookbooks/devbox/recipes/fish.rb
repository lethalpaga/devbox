username, groupname, home_dir = user_vars

package 'fish'

fish_dir = "/#{home_dir}/.config/fish/"

directory fish_dir do
  user username
  group groupname
end

directory "#{fish_dir}/functions" do
  user username
  group groupname
end

execute 'install_fundle' do
  command 'fish -c \'curl -sfL https://git.io/fundle-install | fish\''
  user username
  not_if do ::File.exists?("#{home_dir}/.config/fish/functions/fundle.fish") end
  environment({
    "HOME" => home_dir,
    "XDG_DATA_HOME" => "#{home_dir}/.local/share",
    "XDG_CONFIG_HOME" => "#{home_dir}/.config"
  })
end

fundle_dir = "#{home_dir}/.config/fundle"
directory fundle_dir do
  user username
  group groupname
end

template "#{fish_dir}/config.fish" do
  source 'fish/config.fish'
  user username
  group groupname
end