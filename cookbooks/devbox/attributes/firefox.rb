case node['platform']
when 'ubuntu'
  default['firefox']['extension']['install_dir'] = '/usr/lib/firefox-addons/extensions'
when 'windows'
  default['firefox']['extension']['install_dir'] = "#{ENV['APPDATA']}/Mozilla/plugins"
else
  default['firefox']['extension']['install_dir'] = '/usr/lib64/mozilla/extensions'
end  