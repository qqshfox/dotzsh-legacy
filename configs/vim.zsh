if command -v nvim &>/dev/null; then
    alias vi="nvim"
    alias vim="nvim"
elif command -v mvim &>/dev/null; then
    alias vi="mvim -v"
    alias vim="mvim -v"
    alias vimdiff="mvim -vd"
fi
