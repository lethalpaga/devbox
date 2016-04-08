resource_name :firefox_extension

property :url, String, name_property: true
property :id, String
property :install_dir, default: node['firefox']['extension']['install_dir']

default_action :install

action :install do
  file_path = ::File.join(install_dir, "#{id}.xpi")

  remote_file 'extension_file' do
    source url
    path file_path 
  end
end

action :remove do
  file_path = ::File.join(install_dir, "#{id}.xpi")

  file file_path do
    action :delete
  end
end