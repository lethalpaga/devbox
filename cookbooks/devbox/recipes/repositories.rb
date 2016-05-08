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

apt_repository 'docker' do
  uri 'https://apt.dockerproject.org/repo'
  components ['main']
  distribution 'ubuntu-wily' # Because we can't all respect the standards...
  keyserver 'hkp://p80.pool.sks-keyservers.net:80'
  key '58118E89F3A912897C070ADBF76221572C52609D'
end

apt_repository 'keepassx' do
  uri 'ppa:keepassx/daily'
  components ['main']
  distribution distrib
end

# Update the cache
include_recipe 'apt'
