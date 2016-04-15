username, groupname, home_dir = user_vars

package 'docker-engine'
package 'docker-compose'

# Add the user to the docker group
group 'docker' do
  action :modify
  append true
  members username
end
