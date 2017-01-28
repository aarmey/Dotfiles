set fish_greeting ""
set -gx PATH ~/.bin $PATH

alias selfcontrol "sudo /Applications/SelfControl.app/Contents/MacOS/org.eyebeam.SelfControl (id -u (whoami)) --install"

alias brewdepcount "brewdeps.sh | tr ' ' '\n' | grep -v '^\s*\$/' | sort | uniq -c | sort -bnr"
