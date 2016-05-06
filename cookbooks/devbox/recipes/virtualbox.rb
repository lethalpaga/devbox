package 'virtualbox-guest-dkms'
package 'virtualbox-guest-utils'
package 'virtualbox-guest-x11'

username, _groupname, _home_dir = user_vars

# Add the user to vboxsf to access Shared Folders
group 'vboxsf' do
  append true
  members [username]
  action :manage
end

