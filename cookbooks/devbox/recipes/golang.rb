include_recipe 'golang::default'

link '/usr/local/bin/go' do
  to '/usr/local/go/bin/go'
end