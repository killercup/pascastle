# Used for git diff
# cf. https://github.com/paulirish/dotfiles/commit/6743b907ff586c28cd36e08d1e1c634e2968893e#commitcomment-13459099
# 
# requires gnu-sed
function strip_diff_leading_symbols(){
  color_code_regex="(\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K])"
  reset_color="\x1B\[m"
  dim_magenta="\x1B\[38;05;146m"

  # simplify the unified patch diff header
  gsed -r "s/^($color_code_regex)diff --git .*$//g" | \
    gsed -r "s/^($color_code_regex)index .*$/\n\1$(rule)/g" | \
    gsed -r "s/^($color_code_regex)\+\+\+(.*)$/\1+++\5\n\1$(rule)\x1B\[m/g" |\

  # extra color for @@ context line
    gsed -r "s/@@$reset_color $reset_color(.*$)/@@ $dim_magenta\1/g"  |\

  # actually strips the leading symbols
    gsed -r "s/^($color_code_regex)[\+\-]/\1 /g"
}

## Print a horizontal rule
rule () {
  printf "%$(tput cols)s\n"|tr " " "─"
}


test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
if [ -e /Users/pascal/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/pascal/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export PATH="$HOME/.cargo/bin:$PATH"
