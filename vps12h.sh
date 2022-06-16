echo "Download ngrok..."
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
echo "Copy&paste your tunnel authtoken from https://dashboard.ngrok.com/auth"
read -p "Paste Ngrock Authtoken and Enter: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp --region jp 3389 &>/dev/null &
echo Please wait downloading file install...
echo "Chờ khoảng 5 phút, nếu thấy lâu quá chưa hiện IP bấm Enter cái"
sudo apt-get update > /dev/null 2>&1
echo "Install App..."
sudo apt install firefox -y > /dev/null 2>&1
sudo apt-get install axel -y > /dev/null 2>&1
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg -i google-chrome-stable_current_* > /dev/null 2>&1
sudo apt-get -f install > /dev/null 2>&1
sudo apt-get install xarchiver > /dev/null 2>&1
sudo apt install mousepad > /dev/null 2>&1
sudo apt install mkvtoolnix mkvtoolnix-gui > /dev/null 2>&1
dpkg --add-architecture i386 && apt-get update && apt-get install wine32 > /dev/null 2>&1
apt-get install wine32 > /dev/null 2>&1
curl https://rclone.org/install.sh | sudo bash > /dev/null 2>&1
echo "Install RDP..."
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install --assume-yes xfce4 desktop-base xfce4-terminal > /dev/null 2>&1
echo "Start RDP..."
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo "===================================="
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "User: motdulieu | Pass: 123456"
echo "Không Đóng TAB này"
echo "RDP Windows By Motdulieu"
echo "===================================="
sleep 43210
