## grc diff alias
alias diff='/usr/bin/grc /usr/bin/diff'

## grc dig alias
alias dig='/usr/bin/grc /usr/bin/dig'

## grc gcc alias
alias gcc='/usr/bin/grc /usr/bin/gcc'

## grc ifconfig alias
alias ifconfig='/usr/bin/grc /sbin/ifconfig'

## grc mount alias
alias mount='/usr/bin/grc /bin/mount'

## grc netstat alias
alias netstat='/usr/bin/grc /bin/netstat'

## grc ping alias
alias ping='/usr/bin/grc /bin/ping'

## grc ps alias
alias ps='/usr/bin/grc /bin/ps'

## grc tail alias
alias tail='/usr/bin/grc /usr/bin/tail'

## grc traceroute alias
alias traceroute='/usr/bin/grc /usr/sbin/traceroute'

## grc wdiff alias
alias wdiff='/usr/bin/grc '

## grep aliases
alias grep="grep --color=always"
alias ngrep="grep -n"

alias egrep="egrep --color=auto"

alias fgrep="fgrep --color=auto"

## tmux
alias tmux="tmux attach || tmux new"

## axel
alias axel="axel -a"

## screen
alias screen="screen -xRR"

## Checksums
alias sha1="openssl sha1"
alias md5="openssl md5"

## Force create folders
alias mkdir="/bin/mkdir -pv"

## List open ports
alias ports="netstat -tulanp"

## Get header
alias header="curl -I"

## Get external IP address
alias ipx="curl -s http://ipinfo.io/ip"

## DNS - External IP #1
alias dns1="dig +short @resolver1.opendns.com myip.opendns.com"

## DNS - External IP #2
alias dns2="dig +short @208.67.222.222 myip.opendns.com"

### DNS - Check ("#.abc" is Okay)
alias dns3="dig +short @208.67.220.220 which.opendns.com txt"

## Directory navigation aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."


## Extract file, example. "ex package.tar.bz2"
ex() {
  if [[ -f $1 ]]; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz)  tar xzf $1 ;;
      *.bz2)     bunzip2 $1 ;;
      *.rar)     rar x $1 ;;
      *.gz)      gunzip $1  ;;
      *.tar)     tar xf $1  ;;
      *.tbz2)    tar xjf $1 ;;
      *.tgz)     tar xzf $1 ;;
      *.zip)     unzip $1 ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1 ;;
      *)         echo $1 cannot be extracted ;;
    esac
  else
    echo $1 is not a valid file
  fi
}
## strings
alias strings="strings -a"

## history
alias hg="history | grep"

### Network Services
alias listen="netstat -antp | grep LISTEN"

### HDD size
alias hogs="for i in G M K; do du -ah | grep [0-9]$i | sort -nr -k 1; done | head -n 11"

### Listing
alias ll="ls -l --block-size=1 --color=auto"

## nmap
alias nmap="nmap --reason --open --stats-every 3m --max-retries 1 --max-scan-delay 20 --defeat-rst-ratelimit"

## aircrack-ng
alias aircrack-ng="aircrack-ng -z"

## airodump-ng 
alias airodump-ng="airodump-ng --manufacturer --wps --uptime"

## metasploit
alias msfc="systemctl start postgresql; msfdb start; msfconsole -q \"\$@\""
alias msfconsole="systemctl start postgresql; msfdb start; msfconsole \"\$@\""

## mana-toolkit
alias mana-toolkit-start="a2ensite 000-mana-toolkit;a2dissite 000-default; systemctl restart apache2"
alias mana-toolkit-stop="a2dissite 000-mana-toolkit; a2ensite 000-default; systemctl restart apache2"

## ssh
alias ssh-start="systemctl restart ssh"
alias ssh-stop="systemctl stop ssh"

## samba
alias smb-start="systemctl restart smbd nmbd"
alias smb-stop="systemctl stop smbd nmbd"

## rdesktop
alias rdesktop="rdesktop -z -P -g 90% -r disk:local=\"/tmp/\""

## python http
alias http="python2 -m SimpleHTTPServer"

## work
alias workroot="cd /work/"
alias work="cd /work/"

## Firefox
alias ffx="firefox"

## Google chrome
alias chrome="gksu -u chromeuser google-chrome-stable"

## Jupyter notebook
alias jn="jupyter notebook --allow-root"
## GitHub
alias gthb="cd /work/github/"
alias github="cd /work/github/"

## esec
alias esec="cd /work/ArIES/"

## ml
alias ml="cd /work/machine_learning/"
alias mlroot="cd /work/machine_learning/"

## nn
alias nn="cd /work/machine_learning/neuralnetwork/"
alias nnroot="cd /work/machine_learning/neuralnetwork/"

### DNS - Check ("#.abc" is Okay)
alias dns3="dig +short @208.67.220.220 which.opendns.com txt"

### Network Services
alias listen="netstat -antp | grep LISTEN"

### HDD size
alias hogs="for i in G M K; do du -ah | grep [0-9]$i | sort -nr -k 1; done | head -n 11"

### Listing
alias ll="ls -l --block-size=1 --color=auto"

alias msfvenom-list-all='cat ~/.msf4/msfvenom/all'
alias msfvenom-list-nops='cat ~/.msf4/msfvenom/nops'
alias msfvenom-list-payloads='cat ~/.msf4/msfvenom/payloads'
alias msfvenom-list-encoders='cat ~/.msf4/msfvenom/encoders'
alias msfvenom-list-formats='cat ~/.msf4/msfvenom/formats'
alias msfvenom-list-generate='_msfvenom-list-generate'
function _msfvenom-list-generate {
  mkdir -p ~/.msf4/msfvenom/
  msfvenom --list > ~/.msf4/msfvenom/all
  msfvenom --list nops > ~/.msf4/msfvenom/nops
  msfvenom --list payloads > ~/.msf4/msfvenom/payloads
  msfvenom --list encoders > ~/.msf4/msfvenom/encoders
  msfvenom --help-formats 2> ~/.msf4/msfvenom/formats
}
### DNS - Check ("#.abc" is Okay)
alias dns3="dig +short @208.67.220.220 which.opendns.com txt"

### Network Services
alias listen="netstat -antp | grep LISTEN"

### HDD size
alias hogs="for i in G M K; do du -ah | grep [0-9]$i | sort -nr -k 1; done | head -n 11"

### Listing
alias ll="ls -l --block-size=1 --color=auto"

## tftp
alias tftproot="cd /var/tftp/"

## ftp
alias ftproot="cd /var/ftp/"

## smb
alias smb="cd /var/samba/"
#alias smbroot="cd /var/samba/"

## www
alias wwwroot="cd /var/www/html/"

