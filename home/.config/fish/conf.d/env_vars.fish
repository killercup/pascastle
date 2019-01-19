if test -e ~/.iterm2_shell_integration.fish
	source ~/.iterm2_shell_integration.fish
end

set -x PATH /usr/local/bin $PATH # prefer brews
set -x PATH $HOME/.bin $PATH # prefer user binaries even more
set -x PATH $HOME/.local/bin $PATH # prefer user binaries even more
set -x PATH $PATH /usr/local/sbin

# Package Managers
set -x PATH $PATH $JAVA_HOME/bin
set -x PATH $PATH $HOME/.cargo/bin

# Add _current_ folder's node modules
set -x PATH $PATH ./node_modules/.bin

# Use local bin folder, e.g. for virtualenv
set -x PATH ./bin $PATH

set -x LESS '--RAW-CONTROL-CHARS'

# Exports
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x LANGUAGE en_US.UTF-8

set -x EDITOR 'vim'

# SCCache
# set -x RUSTC_WRAPPER (which sccache)

if type -q brew
	# OpenSSL includes
	set -l __brew_prefix_openssl /usr/local/opt/openssl # (brew --prefix openssl)
	set -x OPENSSL_INCLUDE_DIR $__brew_prefix_openssl/include
	set -x OPENSSL_LIB_DIR $__brew_prefix_openssl/lib
end

