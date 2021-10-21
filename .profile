alias z="vim $HOME/.zshrc"
alias v="vim $HOME/.vimrc"
alias s="systemctl "
alias sr="systemctl restart "
alias ss="systemctl status "
alias st="systemctl start "
alias gaa="git add --all"
alias gcm="git commit -m "
alias n="netstat -plnt"
alias hg="history | grep "
alias ll="ls -halt"

mkcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}
psgrep ()
{
    ps -ef | {
        read -r;
        printf '%s\n' "$REPLY";
        grep --color=auto "$@"
    }
}
#Shows file size
alias lt='ls --human-readable --size -1 -S --classify'
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias count='find . -type f | wc -l'
alias gittop='cd `git rev-parse --show-toplevel`'
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias myip="curl http://ipecho.net/plain; echo"
#alias common="history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10"
function tarball() {
        echo "Takes 2 arguments. The archive to create, and the file or dir to archive."
        echo "tar -zcvf archive.tar.gz foo bar  # Create archive.tar.gz from files foo and bar."
    read -r -p '?Do you want to continue? ' choice

    case "$choice" in
      n|N) break;;
      y|Y) tar -zcvf $1 $2;;
      *) echo 'Response not valid';;
    esac
}
function untar() {
	echo "Call this function with the filename.tar.gz as the first parameter."
	read -r -p  '?Do you want to continue? ' choice
	case "$choice" in
	  n|N) break;;
	  y|Y) tar -xvzf $1;;
          *) echo 'Response not valid';;
	esac
}
numfiles() {
    N="$(ls $CWD | wc -l)";
    echo "$N files in $PWD";
}
