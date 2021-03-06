if status is-interactive
	set -U fish_greeting
	set -x GPG_TTY (tty)

	neofetch

	alias v nvim
	alias config '/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

	starship init fish | source
end
