set -gx PATH ~/.bin $PATH
set -gx PATH ~/node_modules/.bin $PATH


alias selfcontrol "sudo /Applications/SelfControl.app/Contents/MacOS/org.eyebeam.SelfControl (id -u (whoami)) --install"

alias brewdepcount "brewdeps.sh | tr ' ' '\n' | grep -v '^\s*\$/' | sort | uniq -c | sort -bnr"
