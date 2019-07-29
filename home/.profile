# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias gp="grep"
alias pg="ps -ef | grep "
alias qt="qstat"
alias ssh="ssh -X"
alias sr="screen -r "
alias sn="screen "
alias wns="watch -n 1 nvidia-smi"
alias ns="nvidia-smi"
alias dgpu="qlogin -l \"hostname=b1[123456789]*|c*,gpu=1\" -now no"
alias dcpu="qlogin -l \"hostname=c*,cpu=10\" -now no"
alias vf="vimdiff "
alias l-aws='ssh -i /export/a12/zchen/aws/zhc00.pem  ec2-user@ec2-3-16-25-203.us-east-2.compute.amazonaws.com'
alias l-aws2='ssh -i /export/a12/zchen/aws/zhc00.pem  ubuntu@ec2-18-219-186-159.us-east-2.compute.amazonaws.com'
#PATH=$PATH:/opt/NVIDIA/cuda-9.1//bin/

#in a08
alias l-nvi="ssh 'zchen@psglogin.nvidia.com' "
alias c-nvi="/opt/cisco/anyconnect/bin/vpn connect ngvpn01.nvidia.com "
alias d-nvi="/opt/cisco/anyconnect/bin/vpn disconnect ngvpn01.nvidia.com "
alias gt="git"
alias l-a='ssh -p '\''5221'\'' '\''zhc01@222.92.116.126'\''  -o TCPKeepAlive=yes -o ServerAliveInterval=1 '
