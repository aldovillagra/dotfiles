if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -z (pgrep ssh-agent | string collect)
    eval (ssh-agent -c)
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
    set -Ux SSH_AGENT_PID $SSH_AGENT_PID
end

set -gx EDITOR vim

source /opt/asdf-vm/asdf.fish

# pyenv init - | source
# status --is-interactive; and source (pyenv virtualenv-init -|psub)
starship init fish | source
