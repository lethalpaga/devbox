Packer Arch Dev Box
===================

Based on https://github.com/elasticdog/packer-arch

Packer Arch Dev Box is a [Packer](http://www.packer.io/) template and
installation script that can be used to generate a [Vagrant](http://www.vagrantup.com/)
development box for [Arch Linux](https://www.archlinux.org/). The template works
with the default VirtualBox provider.

Usage
-----

### VirtualBox Provider

Assuming that you already have Packer,
[VirtualBox](https://www.virtualbox.org/), and Vagrant installed, you
should be good to clone this repo and go:

    $ git clone https://github.com/elasticdog/packer-arch.git
    $ cd packer-arch/
    $ packer build -only=virtualbox-iso arch-template.json

Then you can import the generated box into Vagrant:

    $ vagrant box add arch packer_arch_virtualbox.box

### wrapacker

For convenience, there is a wrapper script named `wrapacker` that will run the
appropriate `packer build` command for you that will also automatically ensure
the latest ISO download URL and optionally use a mirror from a provided country
code in order to build the final box.

    $ wrapacker --country US --dry-run

See the `--help` flag for additional details.

License
-------

Packer Arch Dev Box is provided under the terms of the
[ISC License](https://en.wikipedia.org/wiki/ISC_license).

Copyright &copy; 2013&#8211;2015, [Aaron Bull Schaefer](mailto:aaron@elasticdog.com).
