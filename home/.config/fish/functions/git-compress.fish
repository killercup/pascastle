function git-compress --description 'compress git repository'
	if not test -d '.git'
    echo "Current directory is not a git repository."
    return -1
  end

  printf "Size before: "
  du -h -d 0 .git | sed -E "s/[[:blank:]]|.git//g"

  printf "Compressing..."
  git gc --aggressive --prune=now > /dev/null
  and printf "%sOK%s" (set_color green) (set_color normal)
  or printf "%sFAILED%s" (set_color red) (set_color normal)
  printf "\n"

  printf "Size now: "
  du -h -d 0 .git | sed -E "s/[[:blank:]]|.git//g"
end
