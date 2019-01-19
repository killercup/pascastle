# Defined in /var/folders/n3/dkk459k908lcmkzwcmq0tcv00000gn/T//fish.NB3yxj/upgrade.fish @ line 2
function upgrade --description 'upgrade some brews and cleanup'
	brew upgrade $argv
	brew cleanup ^ /dev/null
	and printf "%sOK%s" (set_color green) (set_color normal)
	or printf "%sFAILED%s" (set_color red) (set_color normal)
	printf "\n"
end
