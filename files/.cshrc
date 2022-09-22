set noclobber

if ($?prompt) then
  set prompt="%{\033[1;33;44m%}t%{\033[0;34;43m%}%n@%m%{\033[0m%} %T [%{\033[1;34m%}%c1%{\033[0m%}] $ "
  set nobeep
  set fignore = (.o .out .aux .log .toc .ind .ilg .idx)
  set savedirs
  set dirsfile = ~/.csh_dirs
  #set savehist = "10000 merge"
  set savehist
  set histfile = ~/.csh_history

  set f=/usr/games/fortune
  if (-x $f) then
    echo
    $f
    echo
  endif

  if ($?DISPLAY) then
    if ($?tcsh) then
      alias cwdcmd  'echo -n "\033]2;${USER}@${HOST}:$cwd\007\033]1;${USER}@${HOST}:$cwd\007"'
      cd .
      alias vagrant	'ssh \!* ; cd .'
      alias ssh		'ssh \!* ; cd .'
      alias telnet	'telnet \!* ; cd .'
      alias su		'su \!* ; cd .'
      alias sudo	'su \!* ; cd .'
      alias bash	'bash \!* ; cd .'
      alias zsh		'zsh \!* ; cd .'
      alias csh		'zsh \!* ; cd .'
      alias tcsh	'zsh \!* ; cd .'
      alias screen	'zsh \!* ; cd .'
      alias tmux	'zsh \!* ; cd .'
      alias byobu	'zsh \!* ; cd .'
      alias docker	'zsh \!* ; cd .'
    endif
    alias   xterm	'xterm -sb -sl 1000'
  endif

  alias	    rm		'rm -i'
  alias	    cls		'clear'
  alias	    cd..	'cd ..'
  if ($?tcsh) then
    set color
    set noding
    complete kdvi	'p/*/f:*.dvi/'
    complete dvipdf	'p/*/f:*.dvi/'
    complete kpdf	'p/*/f:*.pdf/'
    complete gs		'p/*/f:*.{ps,eps}/'
    complete kghostview 'p/*/f:*.{ps,eps}/'
                # fuer Ubuntu 10.04
    bindkey		[5~ history-search-backward
    bindkey		[6~ history-search-forward
  endif
  if (-r $HOME/.csh_dirs) then
    source $HOME/.csh_dirs
  endif
endif

setenv EXPORT "setenv"
setenv EQ " "
#source $HOME/.shlvl
if (! $?HAS_ENV) then
  source $HOME/.shenv
endif
unsetenv EXPORT
unsetenv EQ

echo "leaving .cshrc"
