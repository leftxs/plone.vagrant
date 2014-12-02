Plone.Vagrant
=============

Plone.Vargant is a kit for setting up an easy to use development environment for Plone in a hosted virtual machine.
**This is not the official version** For the official version please browse to
PloneDev.Vagrant_ or check https://plone.org/.

The kit uses VirtualBox for the virtual machine and the Vagrant box setup
system.

Difference between Plone.Vagrant and PloneDev.Vagrant
-----------------------------------------------------

Plone.Vagrant uses Ansible_ as provisioner, PloneDev.Vagrant uses a combination
of Puppet_ and Shell Scripts.

Further is in Plone.Vagrant the password already set in the install options,
so there is no need to login to find out your password, please **do not forget** to
change it later on.::

    user: admin
    password: plone

There is also a role which will tweak the file system of your Virtualbox to speed
up the performance, per default this role is not executed, is you want to use
it uncomment the role before the first run or if you do it later you need to
run *vagrant provision* again.

Starting
--------

Login to your Vagrant Box and start Plone::

    vagrant ssh
    tbc

Browse to localhost:8080 and create your Plone site


Dependencies
------------

You need to have Ansible_ installed, for more information please check the
documentation_.


.. _PloneDev.Vagrant: https://github.com/plone/plonedev.vagrant
.. _Ansible: http://www.ansible.com/home
.. _Puppet: https://puppetlabs.com
.. _documentation: http://docs.ansible.com/intro.html
