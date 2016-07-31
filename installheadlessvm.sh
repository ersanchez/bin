#!/bin/bash
#
# This script installs a headless virtual machine in VirtualBox
#
# It will prompt for the new VM name, the current active ethernet
# adapter, and 

clear
# Insert a test here to ensure virtualbox is installed
echo "Before we get started please make sure you have the following info:"
echo "* name for the new VM"
echo "* ostype - enter \"VBoxManage list ostypes\" if you are not sure"
echo "* URL for the ISO file you will install"
echo "* URL for the VirtualBox Extension Pack to install"
echo ""
echo "NOTE: VBox Extension Pack for this version must already be installed."

# Installation information
echo "Enter VM name: "
read vmname
echo $vmname
echo "Enter the name of the active ethernet adapter: "
read active_eth
echo $active_eth
echo "$vmname".vdi
echo "Enter the size of the VM hdd in MB: "
read vmsize
echo $vmsize
echo "Type in the full path to the ISO file to install: "
read vmpathtoiso
echo $vmpathtoiso


# Creating the VM
VBoxManage createvm --name $vmname --ostype Ubuntu_64 --register
VBoxManage modifyvm $vmname --memory 2048 --acpi on --boot1 dvd --nic1 bridged --bridgeadapter1 $active_eth
VBoxManage createhd --filename $HOME/VirtualBox\ VMs/$vmname/"$vmname".vdi --size $vmsize
VBoxManage storagectl $vmname --name "IDE Controller" --add ide
VBoxManage storageattach $vmname --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium $HOME/VirtualBox\ VMs/$vmname/"$vmname".vdi
VBoxManage storageattach $vmname --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium $vmpathtoiso
VBoxManage modifyvm $vmname --vrde on
