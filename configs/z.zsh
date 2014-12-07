if command -v brew >/dev/null 2>&1; then
    z_path="`brew --prefix`/etc/profile.d/z.sh"
    [[ -f "$z_path" ]] && . "$z_path"
fi
