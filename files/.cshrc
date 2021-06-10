set noclobber

if ($?prompt) then
  set prompt="%{\033[1;33;44m%}t%{\033[0;34;43m%}%n@%m%{\033[0m%} %T [%{\033[0;34m%}%c1%{\033[0m%}] $ "
  set nobeep
  set fignore = (.o .out .aux .log .toc .ind .ilg .idx)
  set savedirs

  set f=/usr/games/fortune
  if (-x $f) then
    echo
    $f
    echo
  endif

  if ($?DISPLAY) then
    alias cwdcmd  'echo -n "\033]2;${USER}@${HOST}:$cwd\007\033]1;${USER}@${HOST}:$cwd\007"'
    cd .
    alias  ssh  'ssh \!* ; cd .'
    alias  telnet  'telnet \!* ; cd .'
    alias  su  'su \!* ; cd .'
    alias   zsh     'zsh \!* ; cd .'
    alias   bash    'bash \!* ; cd .'
    alias  xterm  'xterm -sb -sl 1000'
  endif
  alias  rm  'rm -i'
  alias  cls  'clear'
  alias  cd..  'cd ..'
  if ($?tcsh) then
    set color
    set noding
    complete kdvi 'p/*/f:*.dvi/'
    complete dvipdf 'p/*/f:*.dvi/'
    complete kpdf 'p/*/f:*.pdf/'
    complete gs 'p/*/f:*.{ps,eps}/'
    complete kghostview 'p/*/f:*.{ps,eps}/'
                # fuer Ubuntu 10.04
    bindkey  [5~ history-search-backward
    bindkey  [6~ history-search-forward
    setenv savehist "1000 merge"
    #setenv histfile "~/.history"
  endif
  if (-r $HOME/.cshdirs) then
    source $HOME/.cshdirs
  endif
endif

set shlvl=3
if ($SHLVL == $shlvl) then
  setenv EXPORT "setenv"
  setenv EQ " "
  source $HOME/.shenv
  unsetenv EXPORT
  unsetenv EQ
endif
