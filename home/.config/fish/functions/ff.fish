# Defined in /var/folders/n3/dkk459k908lcmkzwcmq0tcv00000gn/T//fish.CeKyEK/ff.fish @ line 2
function ff --description 'download a stream with ffmpeg'
	ffmpeg -i $argv[1] -c copy (date +"%Y-%m-%dT%H-%M-%S")-$argv[2].mp4
end
