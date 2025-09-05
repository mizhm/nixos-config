if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

export PATH="$PATH:/home/minh/.local/bin"
export PATH="$HOME/opt/usr/local/bin:$PATH"
export TMPDIR="/tmp"

alias c clear
alias nv nvim

# set -gx GOPATH $HOME/go
# set -gx PATH $PATH $GOPATH/bin
