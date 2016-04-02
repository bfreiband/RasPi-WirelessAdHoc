# RasPi-WirelessAdHoc
Configuration to create a wireless AdHoc network on a Raspberry Pi 2 Model B<br>
Based very heavily on this tutorial: http://lcdev.dk/2012/11/18/raspberry-pi-tutorial-connect-to-wifi-or-create-an-encrypted-dhcp-enabled-ad-hoc-network-as-fallback/

This is how I set up my Belkin N150 (F9L1001v1) wireless usb adapter with my Raspberry Pi 2 Model B to broadcast an AdHoc network. I have only tested this on Raspbian Jessie (Kernel version 4.1.13-v7+), but I don't see why it wouldn't also work with Wheezy.

Instructions
------------
1. Clone this repository
  - From this point, I will assume that your current working directory is the repo that you just cloned.

2. Install DHCP Server
  
  ```
  sudo apt-get update
  sudo apt-get install isc-dhcp-server
  ```

3. Create backups of files that will be modified
  
  ```
  sudo cp /etc/network/interfaces /etc/network/interfaces.backup
  sudo cp /etc/rc.local /etc/rc.local.backup
  sudo cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.backup
  sudo cp /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.backup
  ```

4. If you have not previously made any changes you need to keep in any of the four files that we just backed up:
  - Run the installation script "install.sh". This will completely replace your copy of each of those four files with the copy from this repo.
  
  ```
  sudo ./install.sh
  ```

5. If you have made changes to the files, or just don't feel like using the install script:
  - Manually merge the four configuration files from this repo with your own copy. Take care to change the shebang in "rc.local" if necessary.

6. Edit "rc.local" to choose SSID and key
  
  ```
  sudo nano /etc/rc.local
  ```
  
    - Replace "TenCharKey" with your choice of WEP key for your AdHoc network, but make sure that it's ten characters
    - Replace "YourSSIDHere" with your choice of SSID for your AdHoc network

7. Reboot
