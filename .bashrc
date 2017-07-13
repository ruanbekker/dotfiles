# thanks timo
export PS1="\[\033[1;36m\]\u\[\033[01;37m\]@\[\033[01;34m\]\h\[\033[01;30m\][\[\033[01;37m\]\w\[\033[01;30m\]]\[\033[01;32m\]\[\033[00m\]+ "

# aliases
alias rb_backup="tar -zcf /opt/backups/system/sys_backup-$(date +%F).tar.gz /home/ruan /opt/scripts /opt/workspace"

# lock screen on mac
alias lock='pmset displaysleepnow'
