# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/Scripts/global" ] ; then
    PATH="$HOME/Scripts/global:$PATH"
fi
