if [[ $OSTYPE == darwin* ]] && command -v port &>/dev/null; then
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
fi
