if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

export PATH="$PATH:/home/minh/.local/bin"
export PATH="$HOME/opt/usr/local/bin:$PATH"
export TMPDIR="/tmp"

alias c clear
alias nv nvim

#nix
alias cleanup "sudo nix-collect-garbage --delete-older-than 7d"
alias listgen "sudo nix-env -p /nix/var/nix/profiles/system --list-generations"
alias nixremove "nix-store --gc"
alias test-build "sudo nixos-rebuild test --flake ~/nixos-config/.#mizhm"
alias switch-build "sudo nixos-rebuild switch --flake ~/nixos-config/.#mizhm"
alias optimise "nix store optimise"

#system
alias shutdown "systemctl poweroff"
alias reboot "systemctl reboot"
