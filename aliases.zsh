# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
# alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias bton="blueutil -p 1"
alias btoff="blueutil -p 0"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"
# alias lara="sites && cd laravel/"
# alias docs="lara && cd docs/"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
# alias watch="npm run watch"

# Docker
# alias docker-composer="docker-compose"

# Git
alias status="git status"
# alias gb="git branch"
# alias gc="git checkout"
# alias gl="git log --oneline --decorate --color"
# alias amend="git add . && git commit --amend --no-edit"
# alias commit="git add . && git commit -m"
# alias diff="git diff"
# alias force="git push --force"
# alias nuke="git clean -df && git reset --hard"
# alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
# alias resolve="git add . && git commit --no-edit"
# alias stash="git stash -u"
# alias unstage="git restore --staged ."
# alias wip="commit wip"
alias gc="git commit"
alias amend="git commit --amend --no-edit"
alias log="git log --oneline --graph --decorate --abbrev-commit"
alias gr="gr"
alias rebase="git pull --rebase"
alias continue="git rebase --continue"
alias abort="git rebase --abort"
alias list-count="git rev-list --left-right --count"
alias list-diff="git rev-list --left-right --pretty=oneline"
alias force="git push --force-with-lease"
alias checkout="git checkout"

function gr {
    if [ -n "$1" ]
    then
        git rebase -i HEAD~"$1"
    else
        autoload colors; colors
        echo $fg[red]Error: Please pass how many commits to go back in your rebase as an argument.$reset_color
    fi
}

# FFMPEG
alias list-devices='ffmpeg -f avfoundation -list_devices true -i ""'
# alias record-screen="record-screen"
# alias mov-to-mp4=""

# function mov-to-mp4 {
#     if [ -n "$1" ]
#     then
#         if [ -n "$2" ]
#         then
#             ffmpeg -i "$1".mov -vcodec h264 -acodec aac "$2".mp4
#         else
#             autoload colors; colors
#             echo $fg[red]Error: Please pass the name for the output file.$reset_color
#         fi
#     else
#         autoload colors; colors
#         echo $fg[red]Error: Please pass the name off the input file.$reset_color
#     fi
# }

# function record-screen {
#     if [ ! -n "$1" ]
#             autoload colors; colors
#             echo $fg[red]Error: No input screen parameter passed. $reset_color
#     else
#         if [ ! -n "$2" ]
#             autoload colors; colors
#             echo $fg[red]Error: No output name parameter passed. $reset_color
#         else
#             ffmpeg -f avfoundation -r 30 -s 1280x720 -i "$1:0"  $HOME/Desktop/$2.mp4
#         fi
#     fi
# }
