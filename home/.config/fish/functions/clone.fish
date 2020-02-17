function clone --description "checkout a github repo" --argument url
    set -l match (string match -r '^(https://github.com/|git@github.com:)(\w+)/(\w+)/?(.*)' $url)
    if test -z "$match"
        echo 'cannot parse URL $url'
        return 1
    end

    set -l user $match[3]
    set -l repo $match[4]
    set -l user_dir "$HOME/code/$user"
    mkdir -pv $user_dir
    cd $user_dir

    set -l repo_dir "$user_dir/$repo"
    if test -d $repo_dir
        echo "directory $repo_dir exists, not overwriting, but cd'd you there"
        cd $repo_dir
        return 1
    end
    git clone $url $repo
    cd $repo
end
