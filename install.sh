#!/usr/bin/env sh

# erzeugt Montag, 14. Dezember 2020 14:26 (C) 2020 von Leander Jedamus
# modifiziert Mittwoch, 05. Januar 2022 18:02 von Leander Jedamus
# modifiziert Dienstag, 29. Dezember 2020 15:39 von Leander Jedamus
# modifiziert Montag, 14. Dezember 2020 14:55 von Leander Jedamus

## HOME=$HOME/repositories
## mkdir -p $HOME

ak=$HOME/.ssh/authorized_keys
tak=/tmp/authorized_keys

if [ -f $ak ]; then
  no_replace=TRUE
  cp -p $ak $tak
fi

cd files
cp -Rvp .[^.]* $HOME
cd ..


chmod 700 $HOME/.ssh
chmod 600 $ak

if [ ! -z $no_replace ]; then
  mv $tak $ak
fi

# vim:ai sw=2

