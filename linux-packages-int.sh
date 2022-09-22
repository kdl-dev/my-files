# Start via sudo !

# Snapd
rm /etc/apt/preferences.d/nosnap.pref
apt-get install snapd

# Sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install sublime-text

# VS code
snap install --classic code

# Golang
apt-get install golang

# Python
apt-get install python3

# Docker (docker-compose)
apt-get install curl
curl -fsSL https://get.docker.com/ | sh
usermod -aG docker $USER

# Postman
snap install postman
touch /usr/share/applications/postman.desktop
echo -e "[Desktop Entry]\n 
Type=Application\n
Name=Postman\n
Icon=/opt/apps/Postman/app/resources/app/assets/icon.png\n
Exec="/opt/apps/Postman/Postman"\n
Comment=Postman Desktop App\n
Categories=Development;Code;" > /usr/share/applications/postman.desktop

# Vim 
apt-get install vim

# The end
printf "\n------------------------------------\n-----------Finally done!------------\n------------------------------------\n\n"