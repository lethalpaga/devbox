username, groupname, home_dir = user_vars

package 'sqlite'
package 'libsqlite3-dev'

include_recipe 'rvm::user'

# Install rvm module for fish
fish_dir = "#{home_dir}/.config/fish/"

remote_file "#{fish_dir}/functions/rvm.fish" do
  source 'https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish'
  user username
  group groupname
end
