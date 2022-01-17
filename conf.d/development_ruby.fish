if test -d $HOME/.rbenv/bin
    set -x PATH $PATH $HOME/.rbenv/bin
    status --is-interactive; and rbenv init - fish | source
end