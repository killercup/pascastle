# Defined in /var/folders/n3/dkk459k908lcmkzwcmq0tcv00000gn/T//fish.6fxp1J/fixit.fish @ line 2
function fixit --description 'restart a bunch of macOS services that tend to break'
	sudo killall -KILL appleeventsd; or true
  sudo killall VDCAssistant; or true
  sudo killall AppleCameraAssistant; or true
  sudo killall -HUP mDNSResponder; or true
  killall Dock; or true
  killall Spotlight; or true
  killall Finder; or true
end
