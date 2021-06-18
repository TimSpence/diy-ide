#!/usr/bin/env sh

######################################################################
# @author      : tim (tim@$HOSTNAME)
# @file        : record
# @created     : Thursday Jun 17, 2021 19:46:20 PDT
#
# @description : record an asciicast
######################################################################
set -e

if [ ! -z $TMUX ]; then
    echo "LOL YOU'RE USING TMUX"
fi

readonly cast_id=${CAST_ID:-00}
printf "cast_id=$cast_id\n"

readonly cast_title=${CAST_TITLE:-'Please change me'}
printf "cast_title=$cast_title\n"

readonly filename_slug="${cast_id}_`echo $cast_title | tr ' ' '_'`"
printf "filename_slug=${filename_slug}\n"

readonly tutorial_path="tutorials/tmux/${filename_slug}.md"
printf "tutorial_path=$tutorial_path\n"

readonly cast_path="tutorials/tmux/casts/${filename_slug}.cast"
printf "cast_path=$cast_path\n"

readonly gif_poster_path="tutorials/tmux/posters/${filename_slug}.gif"
printf "gif_poster_path=$gif_poster_path\n"

readonly svg_poster_path="tutorials/tmux/posters/${filename_slug}.svg"
printf "svg_poster_path=$svg_poster_path\n"

echo "Continue? (Y/N)"
read answer
if [[ ! $answer =~ ^[Yy] ]]; then
    echo "bye"
    exit 1
else
    echo "ok, continuing to record"
fi

if [ -f $cast_path ]; then
    option_append='--append'
else
    option_append=''
fi

#vagrant_command='tmux attach' # || tmux new -s demo || /bin/sh'
#printf "vagrant_command is '$vagrant_command'\n"
asciinema_command="vagrant ssh default" # --command '$vagrant_command'"
printf "asciinema_command is '$asciinema_command'\n"
# asciinema rec --append --title 'Please change me' --command 'vagrant ssh default --command \'\''tmux attach\'\''' tutorials/tmux/casts/00_Please_change_me.cast
asciinema rec $option_append --title "$cast_title" --command "$asciinema_command" $cast_path

printf "\nYOU SHOULD PROBABLY SNAPSHOT VAGRANT\n\n"

printf "Creating gif poster"
asciicast2gif -w 80 -h 25 -s 2 $cast_path $gif_poster_path

printf "Creating svg poster"
/bin/cat $cast_path | svg-term --width 80 --height 25 --out $svg_poster_path




