Packer Experiment
=========

The idea is to use Packer to automate the creation of the Vagrant boxes I use.  Until now, I had to manually follow a recipe to create new boxes each time a new Ubuntu release came out.  Well, no more.  Packer allows me to automate the entire process.  Once I have a box created, I can run it through Vagrant and target it to VirtualBox, Docker and VMWare.

The steps are simple:

* install Packer
* install Vagrant
* install VirtualBox
* `packer validate trusty-x64-server.json` to make sure the Packer file is proper
* `packer build trusty-x64-server.json` to create Vagrant box file
* repeat with `packer build trusty-x64-desktop.json`
 
After several minutes, you should have two new Vagrant boxes ready to load into Vagrant for further refinement.  
The only thing I have not figured out how to do is how to have the installer install the virtualizatioon specific 
kernel.  Right now, the stock kernel is being used.  I'm sure I'm losing a bit of performance because of that but 
I'm not going to complain.  I can create new configurations at will.