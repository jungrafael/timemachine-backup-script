echo “Por favor, digite o usuário do sistema”
read username
cd "$(dirname "$0")"
sed -i '' s/UUUU/$username/g mount_script.sh
sudo mkdir -p /TimeMachineSettings
sudo cp -rf mount_script.sh /TimeMachineSettings/mount_script.sh
sudo cp -rf br.com.jungsoft.backup.plist ~/Library/LaunchAgents/br.com.jungsoft.backup.plist
launchctl unload ~/Library/LaunchAgents/br.com.jungsoft.backup.plist
launchctl load ~/Library/LaunchAgents/br.com.jungsoft.backup.plist
