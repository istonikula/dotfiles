
set -x PATH $PATH ~/bin

alias ccat='pygmentize'

# Base16 Shell
if status --is-interactive
  # eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-dark.sh
  source $HOME/.config/base16-shell/profile_helper.fish
end

# apt
alias au="sudo apt update"
alias auu="sudo apt upgrade"
alias auls="sudo apt list --upgradeable"
alias als="sudo apt-cache policy | grep http | awk '{print \$2\"/\"\$3}' | sort -u"

# https://askubuntu.com/a/254585
# http://ubuntuhandbook.org/index.php/2016/05/remove-old-kernels-ubuntu-16-04/
function kls
  dpkg --list | grep linux-image | awk '{ print $2 }' | sort -V
end

function khls
  dpkg --list | grep linux-headers | awk '{ print $2 }' | sort -V
end

function enc1
  sudo cryptsetup luksOpen /home/isto/Secure/enc.iso encVolume; sudo mount /dev/mapper/encVolume /home/isto/Secure/enc
end

function enc0
  sudo umount /home/isto/Secure/enc; sudo cryptsetup luksClose encVolume
end

# network
function n1
  # sudo modprobe -v ath10k_pci
  sudo systemctl restart NetworkManager
end

function n0
  sudo systemctl stop NetworkManager
end

function vpn1
  nmcli --ask con up id Reaktor\ VPN
end
function vpn0
  nmcli --ask con down id Reaktor\ VPN
end

# display
function dpi
  xrdb -query | grep dpi; xdpyinfo | grep dots
end


#

set -xg JAVA_HOME /opt/java/jdk1.8

. ~/Projects/KONE/env/kone_profile.fish

alias ipext="dig +short myip.opendns.com @resolver1.opendns.com"

# docker
function drm
  docker ps -aq --no-trunc | xargs -r docker rm
end
function dls
  docker ps
end
function dla
  docker ps -a
end
function drmi
  docker images -q -f "dangling=true" | xargs -r docker rmi
end




