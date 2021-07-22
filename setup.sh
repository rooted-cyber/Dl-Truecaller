setup() {
printf "\n\033[1;92m Updating package..\n"
apt update
apt upgrade
for a in wget zip toilet figlet python;do
clear
printf "\n\033[1;93m Installing $a\n"
apt install $a || apt reinstall $a
apt install --fix-broken
done
cd files
dpkg -i Font.deb
dpkg -i Random.deb
}
setup
