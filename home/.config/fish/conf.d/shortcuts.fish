abbr -a o 'open'
alias l 'exa --all --long --modified --group --header --color-scale'
abbr -a mkdir 'mkdir -pv' # create all non-existing parent dirs
	alias bwd 'pwd | sed -e "s:/:🥖:g"'

abbr -a wtf 'brew home'
abbr -a bruce 'brew search'

abbr -a pg 'ps aux | grep'
abbr -a ip 'ifconfig  | grep 192' 

abbr -a c 'cargo'
abbr -a cb 'cargo build --release'
abbr -a ct 'env RUST_BACKTRACE=full cargo test'

abbr -a fuckthefinder 'sudo killall -KILL appleeventsd'
abbr -a fuckdns 'sudo killall -HUP mDNSResponder'

alias s 'open this.sublime-project > /dev/null; or subl .; gitup'
abbr -a e 'code-insiders .'
abbr -a clion 'open . -a /Applications/Clion.app'
abbr -a v 'vim'
abbr -a vom 'vim'
abbr -a vi 'vim'
abbr -a p '~/Projekte/'
abbr -a t '~/Projekte/tools/'
abbr -a r '/Volumes/ruhmesmeile/'
abbr -a rr '~/Projekte/ruhmesmeile/'

abbr -a gst 'git status -sb'
alias git-ruhm 'git config user.email pascal.hertleif@ruhmesmeile.com; and echo "commiting with ruhmesmeile mail"'
alias git-gmail 'git config user.email killercup@gmail.com; and echo "commiting with gmail address"'
abbr -a gg 'rg -i'
abbr -a g 'gitup'
abbr -a pull 'git pull --rebase --autostash'
abbr -a master 'git checkout master'
abbr -a mastr 'git checkout master'
abbr -a mater 'git checkout master'
abbr -a hc 'hub clone'
abbr -a gh 'hub browse'

abbr -a phps 'php -S 0.0.0.0:8080'
abbr -a nr 'npm run'
