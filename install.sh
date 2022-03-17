#!/usr/bin/env sh

# erzeugt Montag, 14. Dezember 2020 14:26 (C) 2020 von Leander Jedamus
# modifiziert Mittwoch, 05. Januar 2022 18:02 von Leander Jedamus
# modifiziert Dienstag, 29. Dezember 2020 15:39 von Leander Jedamus
# modifiziert Montag, 14. Dezember 2020 14:55 von Leander Jedamus

## HOME=$HOME/repositories
## mkdir -p $HOME

dir=$HOME/.ssh
tmp=/tmp
ak=$dir/authorized_keys
co=$dir/config
tak=$tmp/authorized_keys
tco=$tmp/config

if [ -f $ak ]; then
  ak_replace=TRUE
  cp -vp $ak $tak
fi

if [ -f $co ]; then
  co_replace=TRUE
  cp -vp $co $tco
fi

cd files
cp -Rvp .[^.]* $HOME
cd ..


chmod 700 $HOME/.ssh
chmod 600 $ak

if [ ! -z $ak_replace ]; then
  mv -v $tak $ak
fi

if [ ! -z $co_replace ]; then
  mv -v $tco $co
fi

# vim:ai sw=2

