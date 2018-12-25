# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#$PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
#PATH=$HOME/python/Python-2.7.11:$PATH
#PATH=/usr/bin:$PATH
CLASSPATH=$PATH:"."
export PATH
export CLASSPATH

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -l'

CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/dpovey/libs
LD_LIBRARY_PATH=/export/a11/hlyu/cudnn/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH

export CNTK_EXAMPLES=/home/ywang/cntk-getting-started
export PATH=$HOME/.local/bin:$CNTK_EXAMPLES:$PATH

THEANO_FLAGS='cuda.root=/usr/local/cuda,mode=FAST_RUN,device=cpu,floatX=float32'
export THEANO_FLAGS

# added by Anaconda3 installer
export PATH="$PATH:/home/ywang/anaconda3/bin"
alias python3="/home/ywang/anaconda3/bin/python"

alias l-apple='ssh -p 219 zhc00@222.92.117.141'
alias l-suzhou='ssh -p 5219 zhc00@222.92.116.126 '
alias pg="ps -ef | grep "
alias c="cd "
alias le="less "
alias l-c="ssh -o StrictHostKeyChecking=no -o TCPKeepAlive=yes -o ServerAliveInterval=30 zchen@login.clsp.jhu.edu"
export PATH=$PATH:~/bin
alias c-c="cd /mnt/homedir/chenzhehuai/works/e2e/codes"
alias c-w="cd /mnt/homedir/chenzhehuai/works/e2e/egs/partlibrispeech/asr1"
alias c-f="cd ~/local/fbsource/fbcode/"
alias c-g="cd /mnt/vol/gfsai-east/langtech/users/chenzhehuai/works/e2e/egs/partlibrispeech/asr1"

# added by Miniconda3 installer
export PATH="/mnt/homedir/chenzhehuai/miniconda3/bin:$PATH"
alias sn="screen"
alias sr="screen -r"
alias wns="watch -n 1 nvidia-smi"

alias l-211="ssh devgpu211.prn2  -o StrictHostKeyChecking=no -o TCPKeepAlive=yes -o ServerAliveInterval=30"
 
