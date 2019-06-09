
# go
set -x GOROOT /usr/local/go
set -x GOPATH ~/go

# ruby
set -x GEM_HOME ~/gems

# aws vault
set -x AWS_VAULT_BACKEND secret-service


set -x PATH $PATH ~/bin $GOROOT/bin $GOPATH/bin $GEM_HOME/bin


alias ccat='pygmentize'


# Base16 Shell
if status --is-interactive
  # eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-dark.sh
  source $HOME/.config/base16-shell/profile_helper.fish
end
# Reapply base16 theme, some apps like tig reset the theme after commiting
function th
  sh ~/.base16_theme
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
  nmcli --ask con up id ReaktorVPN
end
function vpn0
  nmcli --ask con down id ReaktorVPN
end

# display
function dpi
  xrdb -query | grep dpi; xdpyinfo | grep dots
end


set -xg JAVA_HOME /opt/java/jdk1.8
# set -xg JAVA_HOME /opt/java/jdk1.10

# . ~/Projects/KONE/env/kone_profile.fish

alias ipext="dig @resolver1.opendns.com -4 ANY myip.opendns.com +short"

# docker
function drm
  docker ps -aq --no-trunc | xargs -r docker rm
end
function dls
  docker ps --format 'table {{.ID}}\t{{.Image}}' $argv
end
function dlsc
  dls | grep $argv[1] | awk '{ print $1 }'
end
function dlsi
  docker images $argv
end
function drmi
  docker images -q -f "dangling=true" | xargs -r docker rmi
end
function djsonlog
  set container_id = argv[1]
  set log (docker inspect --format='{{.LogPath}}' $argv[1])
  sudo tail -n 100 -f $log | jq '.log | fromjson?'
end

# check disk smart log
function sl
  sudo nvme smart-log /dev/nvme0
end

function e
  emacsclient -n $argv
end

function ef
  e ~/.config/fish/config.fish
end

function gradle
  ./gradlew $argv
end

function lerna
  ./node_modules/.bin/lerna $argv
end

function xx
  xmodmap ~/.Xmodmap
end
