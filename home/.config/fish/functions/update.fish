function update --description 'refresh brew'
	date
	printf "Pulling..."
	brew update > /dev/null
	and printf "%sOK%s" (set_color green) (set_color normal)
	or printf "%sFAILED%s" (set_color red) (set_color normal)
	printf "\n"

	brew outdated
end
