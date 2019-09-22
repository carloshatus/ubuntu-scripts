# !/bin/bash
# Ubuntu 18.04.3

# Utilitarios
sudo apt-get update && \
sudo apt-get install -y \
    build-essential \
    curl \

# Node.js
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
sudo apt-get install -y nodejs && \
node -v && \
npm -v && \

# React native
sudo npm install -g react-native-cli && \

# Java 8 OpenJDK
sudo apt-get install -y lib32stdc++6 lib32z1 openjdk-8-jdk && \

# Android Studio
sudo add-apt-repository ppa:maarten-fonville/android-studio -y && \
sudo apt update && \
sudo apt install android-studio -y && \
android && \

# limpar instalação
sudo apt autoremove -y
