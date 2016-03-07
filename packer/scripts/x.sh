# Download yaourt
echo "Updating pacman config..."
touch /etc/pacman.conf
echo '
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
' >> /etc/pacman.conf

echo "Synchronizing packages..."
pacman -Sy

echo "Installing yaourt..."
pacman -S yaourt --noconfirm

pacman -S mlocate --noconfirm

# Create user
useradd nils -d /home/nils

##### Manual install because chef on arch  :'(
pacman -S wayland --noconfirm
pacman -S awesome --noconfirm

# Install and run chef-solo
echo "Installing chefdk..."
#su - nils -c "yaourt -S chef-dk --noconfirm"

echo "Running chef-solo..."
#chef-solo -c /tmp/chef-solo/solo.rb -j /tmp/chef-solo/node.json