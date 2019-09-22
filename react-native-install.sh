# !/bin/bash
# Ubuntu 18.04.3

# Utilitarios
sudo apt-get update && \
sudo apt-get install -y \
    build-essential \
    curl \
	gcc-multilib \
	lib32z1 \
	lib32stdc++6 \
	unzip && \

# Node.js
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
sudo apt-get install -y nodejs && \
node -v && \
npm -v && \

# React native
sudo npm install -g react-native-cli && \

# Java 8 OpenJDK
sudo add-apt-repository ppa:openjdk-r/ppa -y && \
sudo apt-get update && \
sudo apt-get install -y openjdk-8-jdk && \
java -version && \

# Android SDK
mkdir ~/Android -p && \
cd ~ && \
sudo curl -L https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip -o Android/Sdk.zip && \
unzip Android/Sdk.zip -d Android/Sdk && \
export ANDROID_HOME=~/Android/Sdk && \
export PATH=$PATH:$ANDROID_HOME/tools && \
export PATH=$PATH:$ANDROID_HOME/platform-tools && \
echo 'ANDROID_HOME=~/Android/Sdk' >> ~/.profile && \
echo 'PATH=$PATH:$ANDROID_HOME/tools' >> ~/.profile && \
echo 'PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.profile && \
~/Android/Sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-27" "build-tools;27.0.3" && \
android && \

# limpar instalação
rm -f ~/Android/Sdk.zip && \
sudo apt autoremove -y
