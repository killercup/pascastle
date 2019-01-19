# My `$HOME` is my castle

Using [homeshick] to manage dotfiles.

## Installation on a new machine

Follows [this guide][homeshick-new].

0. Install recent version of fish shell, optionally set it as default
1. `git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick`
2. `$HOME/.homesick/repos/homeshick/bin/homeshick clone killercup/pascastle`
3. `(cd $HOME/.homesick/repos/pascastle; make fisher_deps)`

[homeshick]: https://github.com/andsens/homeshick
[homeshick-new]: https://github.com/andsens/homeshick/wiki/Tutorials#adding-other-machines
