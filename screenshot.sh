#!/bin/bash
#
# take screenshot of running vm
# based on work detaile at 
#  http://www.dedoimedo.com/computers/virtualbox-screenshot.html
#
# To Do: set up if,then section that presents selection choice
#   if more than 1 VM is running
#   need to look deeper into 'VBoxManage list runningvms'
#

vmname="u1604d_ISO-NE_VPN"

VBoxManage controlvm $vmname screenshotpng /home/`whoami`/Pictures/screenshot-`date --iso-8601=seconds -u`.png

exit 0
