set -gx PATH ~/.bin $PATH
set -gx PATH ~/node_modules/.bin $PATH

alias selfcontrol "sudo /Applications/SelfControl.app/Contents/MacOS/org.eyebeam.SelfControl (id -u (whoami)) --install"
alias sharingOn "sudo  /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -configure -allowAccessFor -allUsers -configure -restart -agent -privs -all"
alias sharingOff "sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -deactivate -configure -access -off"
alias brewdepcount "brewdeps.sh | tr ' ' '\n' | grep -v '^\s*\$/' | sort | uniq -c | sort -bnr"
