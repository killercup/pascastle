UNAME := $(shell uname)
HOMESHICK := "$(HOME)/.homesick/repos/homeshick/bin/homeshick"

all:
	echo "call 'make install' or 'make update'"

.PHONY: install update _up fisher_deps

install:
	$(HOMESHICK) link --verbose dotfiles

update:
	$(HOMESHICK) link --verbose dotfiles

_up: fisher_deps install_scripts

fisher_deps:
	curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
	fish -c 'fisher'

install_homeshick:
	git clone https://github.com/andsens/homeshick.git $(HOME)/.homesick/repos/homeshick

