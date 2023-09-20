#                 Welcome to \033[1m`hostname`\033[0m \033[34m
#
#  This system is running:  \033[1m `cat /etc/redhat-release` \033[0m  \033[34m
#  Kernel is:                \033[1m`uname -a |awk '{print $3,"("$7,$8,$9,")"}'` \033[0m \033[34m
#  Network:                  \033[1m`hostname -I` \033[0m \033[34m
#  Default gw:               \033[1m`ip route |grep default |awk '{print $2,$3,$4,$5}' ` \033[0m \033[34m
#
#  You are logged in as:     \033[1m`whoami`\033[0m \033[34m
#
#  UPTIME:                  \033[1m `uptime |awk '{print $3,$4,$5}' |sed 's/,//g'` \033[0m \033[34m
#  LOAD:                    \033[1m `uptime |awk '{print $(NF-0),$(NF-1),$(NF-2)}'`  \033[0m \033[34m
#  Info Disk:               \033[1m `df -h|grep -w / |awk '{print $4}'`  used \033[0m \033[34m
#  Info RAM:                \033[1m `free -h |grep buffers/cache |awk '{print $4}'` available \033[0m \033[34m
#
#########################################################



# Alias Telemaque :


alias reboot="/bin/echo Sur de vouloir reboot $HOSTNAME ? command reboot au cas ou!! "
alias halt="/bin/echo Sur de vouloir arreter $HOSTNAME ??? command halt au cas ou!! "
alias route6="route -A inet6"
alias l="ls -F -b -T 0 -A -k -p -q -h --color -l"
alias p="ps f -eo pid,user,%cpu,%mem,start,args"
alias df="df -haT"
alias diff="diff -i -E -b -w -B"
alias h="history"
alias who="who -u -a"
alias ipt="iptables -L -n -v --line-number"
alias pico="nano"
alias crontab="crontab -i"
alias grep="grep --colour"
alias df="df -h"

# Env
TZ="Europe/Paris"
EDITOR="vim"
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=10000
NORMAL=$(echo -e '\e[0m')
HISTTIMEFORMAT="${NORMAL}[ %d/%m/%Y %H:%M:%S ]${NORMAL} "
TMOUT=3600

export TZ EDITOR HISTSIZE HISTFILESIZE NORMAL HISTTIMEFORMAT TMOUT

# Prompt

if [ `id -u` = "0" ]; then
export PS1="(\[\033[1;36m\]\$(date +%H:%M:%S)\[\033[0m\]|\[\033[1;36m\]\u\[\033[0m\]@\[\033[1;35m\]\h\[\033[1;36m\]:\w\[\033[0m\] \[\033[1;31m\]#\[\033[0m\]) "
else
export PS1="(\[\033[1;36m\]\$(date +%H:%M:%S)\[\033[0m\]|\[\033[1;36m\]\u\[\033[0m\]@\[\033[1;35m\]\h\[\033[1;36m\]:\w\[\033[0m\] \$) "
fi
