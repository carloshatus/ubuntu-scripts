# !/bin/bash
# Ubuntu 18.04.3
# Desenvolvimento

# DNS
sudo nano /etc/resolv.conf && \

# Utilitarios
sudo apt-get update && \
sudo apt-get install -y \
    git \
    build-essential \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common && \

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" && \
sudo apt-get update && \
sudo apt-get install -y docker-ce docker-ce-cli containerd.io && \
sudo usermod -aG docker $USER && \
newgrp docker && \
docker run hello-world && \

# Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
sudo chmod +x /usr/local/bin/docker-compose && \
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose && \
docker-compose --version && \

# Node.js
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
sudo apt-get install -y nodejs && \
node -v && \
npm -v && \

# vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && \
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/ && \
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' && \
sudo apt-get update && \
sudo apt-get install -y code && \

# dbeaver
sudo add-apt-repository ppa:serge-rider/dbeaver-ce && \
sudo apt-get update && \
sudo apt-get install -y dbeaver-ce && \

# chrome
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
sudo apt-get update && \
sudo apt-get install -y google-chrome-stable && \

# limpar instalação
sudo apt autoremove -y
