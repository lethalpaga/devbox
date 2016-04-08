username, groupname, home_dir = user_vars

package 'fish'

fish_dir = "/#{home_dir}/.config/fish/"

directory "#{fish_dir}" do
  user username
  group groupname
end

directory "#{fish_dir}/functions" do
  user username
  group groupname
end

execute 'install_omf' do
  command 'fish -c \'curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish\''
  user username
  not_if do ::File.exists?("#{home_dir}/.local/share/omf/init.fish") end
  environment({
    "XDG_DATA_HOME" => "#{home_dir}/.local/share",
    "XDG_CONFIG_HOME" => "#{home_dir}/.config",
  })
end

omf_dir = "#{home_dir}/.config/omf"
directory omf_dir do
  user username
  group groupname
end

template "#{omf_dir}/bundle" do
  source "fish/omf/bundle"
  user username
  group groupname
end

template "#{omf_dir}/theme" do
  source "fish/omf/theme"
  user username
  group groupname
end
