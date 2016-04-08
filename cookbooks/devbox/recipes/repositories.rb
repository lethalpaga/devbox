# Fish shell
distrib = node['devbox']['distrib']

apt_repository 'fish' do
  uri 'ppa:fish-shell/release-2'
  components ['main']
  distribution distrib
end

apt_repository 'awesome' do
  uri 'ppa:klaus-vormweg/awesome'
  components ['main']
  distribution distrib
end


# Update the cache
include_recipe 'apt'
