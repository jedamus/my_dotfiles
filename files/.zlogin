# ~/.zlogin
#echo "ich bin $HOME/.zlogin"

if [ $HOST = "master" ]; then
  #echo "bin auf master"
  echo -n "active-print.py -P laserjet: "
  ~/bin/active-print.py -P laserjet 2> /dev/null &
  echo -n "active-print.py -P duplex:   "
  ~/bin/active-print.py -P duplex 2> /dev/null &
  echo -n "active-print.py -P local-laser:   "
  ~/bin/active-print.py -P local-laser 2> /dev/null &
fi
