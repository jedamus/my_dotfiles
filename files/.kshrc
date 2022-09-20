# ~/.mkshrc
#echo "ich bin .mkshrc"

if [ $(id -u) -gt 0 ]; then
  p="$"
else
  p="#"
fi

export PS1='k ${USER:=$(id -un)}@${HOSTNAME:=$(hostname)} $(date +"%H:%M") (\!) $PWD '"$(if [ $(id -u) -gt 0 ]; then print "$"; else print "#"; fi) "

##+## Leander Jedamus
export EXPORT="export"
export EQ="="
#source $HOME/.shlvl
if [ -z $HAS_ENV ]; then
  source $HOME/.shenv
  export HAS_ENV="true"
fi
unset EXPORT EQ

