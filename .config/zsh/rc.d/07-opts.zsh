#!/bin/zsh

##
# Shell options that don't fit in any other file.
#
# Set these after sourcing plugins, because those might set options, too.

# MANPAGER
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Don't let > overwrite files. To overwrite, use >| instead.
setopt NO_CLOBBER

# Allow comments to be pasted into the command line.
setopt INTERACTIVE_COMMENTS

# Don't treat non-executable files in your $path as commands.
setopt HASH_EXECUTABLES_ONLY

# Enable additional glob operators. (Globbing = pattern matching)
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Filename-Generation
setopt EXTENDED_GLOB

# Enable ** and *** as shortcuts for **/* and ***/*, respectively.
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Recursive-Globbing
setopt GLOB_STAR_SHORT

# Sort numbers numerically, not lexicographically.
setopt NUMERIC_GLOB_SORT

# Completions

zstyle ':completion:*' menu select completer _expand _complete _ignored _correct _approximate 
zstyle :compinstall filename '/home/lukeleppan/.config/zsh/07-opts.zsh'

autoload -Uz compinit
compinit

