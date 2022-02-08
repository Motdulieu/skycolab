read -p "Paste Token Ngrok and Enter: " CRP
echo "Download ngrok"
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
echo "======================="
read -p "Choose Ngrok Region: " CRP
nohup ./ngrok tcp --region $CRP 3389 &>/dev/null &
echo Please wait downloading file install
echo "Chờ khoảng 5 phút, nếu thấy lâu quá chưa hiện IP bấm Enter cái"
sudo apt-get update > /dev/null 2>&1
echo "Install App"
sudo apt install firefox -y > /dev/null 2>&1
sudo apt-get install axel -y > /dev/null 2>&1
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg -i google-chrome-stable_current_* > /dev/null 2>&1
sudo apt-get -f install > /dev/null 2>&1
sudo apt-get install xarchiver > /dev/null 2>&1
sudo apt install mkvtoolnix mkvtoolnix-gui > /dev/null 2>&1
dpkg --add-architecture i386 && apt-get update && apt-get install wine32 > /dev/null 2>&1
apt-get install wine32 > /dev/null 2>&1
sudo apt-get install terminator > /dev/null 2>&1
curl https://rclone.org/install.sh | sudo bash > /dev/null 2>&1
echo "Install RDP"
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install xfce4 -y > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "Start RDP"
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Không Đóng TAB này"
echo "user and pass phía trên"
echo "RDP Windows By Motdulieu"
echo "===================================="
sleep 43210
