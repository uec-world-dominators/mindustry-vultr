#!/bin/sh
set -e

ufw allow 6567/tcp
ufw allow 6567/udp

pacman -Sy --noconfirm
pacman -S --noconfirm jdk8-openjdk tmux

curl -Ls https://github.com/Anuken/Mindustry/releases/download/v126.2/server-release.jar > /server-release.jar

useradd -s /bin/bash -m mindustry || :
sudo -u mindustry -g mindustry --shell tmux new -A -s mindustry "bash --init-file <(echo java -jar /server-release.jar)"
