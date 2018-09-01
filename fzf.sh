#!/bin/sh

brew install fzf

# Installs useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

# awesome preview and open support via https://remysharp.com/2018/08/23/cli-improved
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in Atom
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(atom {})+abort'"
