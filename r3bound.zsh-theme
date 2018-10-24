# Personalized!

# Grab the current date (%D) and time (%T) wrapped in {}: {%D %T}
R3BOUND_CURRENT_TIME_="%{$fg[yellow]%}%T%{$reset_color%}"
# Grab the current version of ruby in use (via RVM): [ruby-1.8.7]
if [ -e ~/.rvm/bin/rvm-prompt ]; then
  R3BOUND_CURRENT_RUBY_="%{$fg[white]%}[%{$fg[magenta]%}\$(~/.rvm/bin/rvm-prompt i v)%{$fg[white]%}]%{$reset_color%}"
else
  if which rbenv &> /dev/null; then
    R3BOUND_CURRENT_RUBY_="%{$fg[white]%}[%{$fg[magenta]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg[white]%}]%{$reset_color%}"
  fi
fi
TAB_="%{$fg[red]%}└──╼%{$reset_color%} "
THINGY0_="%{$fg[red]%}[%{$reset_color%}"
THINGY1_="%{$fg[red]%}]%{$reset_color%}"
THINGY2_="%{$fg[red]%}┌─%{$reset_color%}"
THINGY3_="%{$fg[red]%}─%{$reset_color%}"
OPEN0_="%{$fg[white]%}{%{$reset_color%}"
CLOSE0_="%{$fg[white]%}}%{$reset_color%}"
AT_="%{$fg[yellow]%}@%{$reset_color%}"
NEW_LINE_=$'\n'
# Grab the current machine name: muscato
R3BOUND_CURRENT_MACH_="%{$fg[cyan]%}%m%{$fg[white]%}%{$reset_color%}"
# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
R3BOUND_CURRENT_LOCA_="%{$fg[green]%}%~\$(PATH &> /dev/null)%{$reset_color%}"
# Grab the current username: dallas
R3BOUND_CURRENT_USER_="%n%{$reset_color%}"
# Use a % for normal users and a # for privelaged (root) users.
R3BOUND_PROMPT_CHAR_="%{$fg[white]%}%(!.#."$")%{$reset_color%}"
# Close it all off by resetting the color and styles.
# Put it all together!
PROMPT="$THINGY2_$THINGY0_$OPEN0_$R3BOUND_CURRENT_TIME_$CLOSE0_$R3BOUND_CURRENT_RUBY_$R3BOUND_CURRENT_USER_$AT_$R3BOUND_CURRENT_MACH_$THINGY1_$THINGY3_$THINGY0_$R3BOUND_CURRENT_LOCA_$THINGY1_$NEW_LINE_$TAB_$R3BOUND_PROMPT_CHAR_ "
RPROMPT="$(battery_pct_prompt)"
