rm -rf ngrok ngrok.zip ngrok.sh > /dev/null 2>&1
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
read -p "Paste Token Ngrok and Enter: " CRP
./ngrok authtoken $CRP 
