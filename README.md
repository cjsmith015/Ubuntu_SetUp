# Ubuntu Setup
SO! You broke your computer again. Figures. Now you need to do a fresh install and start over.
Never fear! Just follow these instructions.

# Removing Linux

## Create Ubuntu USB

[Follow this tutorial](http://www.everydaylinuxuser.com/2015/11/how-to-create-ubuntu-1510-usb-drive.html)

If you need to wipe the USB, use method #2 as described [here](https://www.itsupportguides.com/knowledge-base/windows-10/three-ways-to-wipe-a-usb-drive-from-windows/). Or open CMD and run 'diskpart'. Then:

```
list disk
select disk 1 (or whatever disk it is)
clean
create partition primary
select partition 1
format fs=fat32
```

This might take a while.

## Move Files

Right before wiping the Linux side, use the recovery USB to move your Linux files onto windows. You'll probably have to do some exploring to where each of those live, but try /dev/mnt first.

## Delete Partition

# Installing Linux

# Setting Up Gnome

# Installing Python

# Installing Programs

# Razer Blade Fixes

# Other Tweaks

[Fix Windows/Linux Time Sync Issue](https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/)
