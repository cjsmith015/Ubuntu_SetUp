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

Install gparted while under 'Try Ubuntu' with `sudo apt-get install gparted` and then delete the Linux partition.

# Installing Linux

Reboot the computer and choose 'Install Ubuntu'. Follow the instructions. 

# Setting Up Linux

## Switch to GNOME

From [here](https://linuxconfig.org/how-to-install-gnome-on-ubuntu-18-04-bionic-beaver-linux)
```
sudo apt install gnome-session
```
You might have to reboot. Select GNOME on Xorg on log-in.

## Installing Programs

```
sudo apt install chromium-browser

sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

sudo snap install slack --classic

sudo apt-get install git
```

Change default web browser to Chromium by going to Settings > Details > Default Applications

## Setting Up Git

```
git config --global user.name "Christiana Smith"
git config --global user.email cj.smith015@gmail.com
```

Then generate a new SSH key, delete the old one on github, add the new one. Detailed instructions [here](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/).

```
ssh-keygen -t rsa -b 4096 -C "cj.smith015@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
```
Then add the new SSH key [here](https://github.com/settings/keys).

## Installing Python/DS-Related Programs

Download latest Anaconda version [here](https://www.anaconda.com/download/#linux).

```
bash ~/Downloads/Anaconda[tab]
```

Restart terminal.

```
conda install psycopg2
conda install csvkit
sudo apt-get install postgresql-10
cd Downloads
wget http://dbeaver.jkiss.org/files/dbeaver-ce_latest_amd64.deb
sudo dpkg -i dbeaver-ce_latest_amd64.deb
sudo apt-get -f install
```

## Razer Blade Fixes

## Other Tweaks

[Fix Windows/Linux Time Sync Issue](https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/)
