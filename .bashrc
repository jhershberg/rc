# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export EDITOR=vim
alias check_ws=grep\ -En\ "\ +$"\ \$\(git\ status\ -suno\ \|\ cut\ -d\\\ \ -f3\)
export SKIPS=-Dcheckstyle.skip\ -DskipTests\ -Dmaven.site.skip=true\ -Dfindbugs.skip=true\ -Dmaven.javadoc.skip=true

KARAF_HOME=/home/jhershbe/odl/netvirt/vpnservice/distribution/karaf/target/assembly/
export KD=-DaddInstallRepositoryPath=$KARAF_HOME/system

export PATH=/home/jhershbe/apache-maven-3.3.9/bin/:$PATH
export WORKON_HOME=~/.virtualenvs

