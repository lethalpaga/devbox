package 'xorg'
package 'lxdm'

# Set default runlevel
replace '/etc/init/rc-sysinit.conf' do
  replace /env DEFAULT_RUNLEVEL=.*/
  with 'env DEFAULT_RUNLEVEL=5'
end