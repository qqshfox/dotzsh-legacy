if command -v mvim &>/dev/null; then
    export EDITOR="mvim -v"
    alias vi="mvim -v"
    alias vim="mvim -v"
    alias vimdiff="mvim -vd"
else
    export EDITOR="vim"
fi
