#!${PATH}bash
clear
echo "==================================="
echo "| Welcome! This is web server gen |"
echo "| by Administrator                |"
echo "==================================="
echo ""
sleep 4
echo "Now the server will start generating..."
clear
cd ~
mkdir server_files
cd server_files
echo "Generating..."
sleep 2
clear

echo "<html>" >> index.html
echo "Generating."
sleep 2
clear
echo "<body>" >> index.html
clear
echo "Generating.."
echo "<h1>It works</h1>" >> index.html
echo "Generating..."
echo "</body>" >> index.html
echo "Code generated but no server"
clear
echo "Installing server"
apt update -y
apt install nodejs-lts -y
npm install http-server -g
# Adding alias to bashrc or zshrc
if [[ -w /etc/bash.bashrc ]]; then
  echo 'alias start_server="https-server ~/server_files"' >> /etc/bash.bashrc
elif [[ -w ${PREFIX}/etc/bash.bashrc ]]; then
  echo 'alias start_server="https-server ~/server_files"' >> ${PREFIX}/etc/bash.bashrc
elif [[ -w ~/.zshrc ]]; then
  echo 'alias start_server="https-server ~/server_files"' >> ~/.zshrc
else
  echo "Unable to add alias. Please manually add the alias 'start_server' to your shell configuration file."
fi
zsh
echo "To start your server, you have to type 'start_server'"
