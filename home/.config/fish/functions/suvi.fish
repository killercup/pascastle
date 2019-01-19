function suvi --description 'sudo vim with user prefs'
  sudo vim -u '$HOME/.vimrc' $argv
end
