username, groupname, home_dir = user_vars

font_dir = '/usr/share/fonts/source-code-pro'

# Install emacs and spacemacs
package 'emacs'

git "#{home_dir}/.emacs.d" do
  repository 'https://github.com/syl20bnr/spacemacs'
  user username
  group groupname
end

template "#{home_dir}/.spacemacs" do
  source 'spacemacs/.spacemacs.erb'
  user username
  group groupname
end

# Install the fonts
git "/tmp/source-code-pro" do
  repository 'https://github.com/adobe-fonts/source-code-pro.git'
end

remote_file "/tmp/source-code-pro.zip" do
  source node['spacemacs']['font']['url']
end

zipfile "/tmp/source-code-pro.zip" do
  into '/tmp/source-code-pro'
  notifies :run, 'execute[install_sourcecodepro_font]'
end

directory font_dir do
  recursive true
end

execute 'install_sourcecodepro_font' do
  action :nothing
  command "cp /tmp/source-code-pro/*/TTF/* #{font_dir} && fc-cache"
end
