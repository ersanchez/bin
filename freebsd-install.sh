#/bin/sh

# Script to automatically configure a headless FreeBSD server

# Install pkg
sudo pkg install -y gnupg
sudo pkg install -y python3
sudo pkg install -y rsync
sudo pkg install -y ruby
sudo pkg install -y ssmtp
sudo pkg install -y testdisk
sudo pkg install -y tmux
sudo pkg install -y vim-lite
sudo pkg install -y wget
sudo pkg install -y xclip
sudo pkg install -y zfstools

# configure send-only email for reporting

sudo cp /usr/local/etc/ssmtp/revaliases.sample /usr/local/etc/ssmtp/revaliases
sudo cp /usr/local/etc/ssmtp/ssmtp.conf.sample /usr/local/etc/ssmtp/ssmtp.conf

# disable sendmail

cd /etc
if grep 'sendmail_enable="NO"' /etc/rc.conf; then
  echo 'sendmail_enable="NO"' | sudo tee -a /etc/rc.conf
fi
echo 'sendmail_submit_enable="NO"' | sudo tee -a /etc/rc.conf
echo 'sendmail_outbound_enable="NO"' | sudo tee -a /etc/rc.conf
echo 'sendmail_msp_queue_enable="NO"' | sudo tee -a /etc/rc.conf
