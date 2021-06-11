# ~/.mkshrc
#echo "ich bin .mkshrc"

if [ $(id -u) -gt 0 ]; then
  p="$"
else
  p="#"
fi

echo $p

export PS1='k ${USER:=$(id -un)}@${HOSTNAME:=$(hostname)} $(date +"%H:%M") (\!) $PWD '"$(if [ $(id -u) -gt 0 ]; then print "$"; else print "#"; fi) "

##+## Leander Jedamus
if [ $SHLVL -eq 2 ]; then
  export SHLVL=2
  export EXPORT="export"
  export EQ="="
  source $HOME/.shenv
  unset EXPORT EQ
fi

