#!/usr/bin/env bash
# Create firefox profile
set -e
name=$1
url=$2
# Ugly, copy-pasted from SO
simple_name=$(echo "$name" | awk '{print tolower($0)}' | sed 's/ //g')
echo "Creating webapp $name, using $url."

firefox -CreateProfile $simple_name
profile_dir=$(find ~/.mozilla/firefox/ -maxdepth 1 | grep $simple_name)
echo 'user_pref("browser.ssb.enabled",true);' > $profile_dir/user.js

# Create desktop entry
cat >~/.local/share/applications/$simple_name.desktop <<EOL
[Desktop Entry]
Exec=firefox -P $simple_name --ssb $url
Icon=/home/user/.local/share/applications/$simple_name.png
Type=Application
Terminal=false
Name=$name
StartupNotify=true
StartupWMClass=firefox
EOL

# Get icon
wget $url/favicon.ico -O /tmp/favicon.ico
convert /tmp/favicon.ico /tmp/favicon.png
mv /tmp/favicon.png .local/share/applications/$simple_name.png ||
mv /tmp/favicon-0.png .local/share/applications/$simple_name.png
rm /tmp/favicon*.png
