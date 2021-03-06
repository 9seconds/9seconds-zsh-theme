# 9seconds ZSH theme, modified AVIT

PROMPT='

${_current_dir} $(git_prompt) $(venv_prompt)
%{$fg_bold[white]%}➜%{$reset_color%} '
PROMPT2='%{$fg[white]%}◀%{$reset_color%} '
RPROMPT='%{$(echotc UP 1)%} ${_current_date} ${_return_status}%{$(echotc DO 1)%}'

local _current_dir="%{$fg[blue]%}%3~%{$reset_color%}"
local _current_date="%{$fg[white]%}$(date '+%R')%{$reset_color%}"
local _return_status="%{$fg[red]%}%(?..⍉)%{$reset_color%}"

venv_prompt() {
    if [[ -n $VIRTUAL_ENV ]]; then
        local venv_name=$(basename $VIRTUAL_ENV)
        echo -n "%{$fg[yellow]%}($venv_name)%{$reset_color%} "
    fi
}

git_prompt() {
    local branch_name="$(git rev-parse --symbolic-full-name --abbrev-ref HEAD 2>/dev/null || true)"
    echo -n "%{$fg[green]%}${branch_name}%{$reset_color%}"
}

if [[ $USER == "root" ]]; then
  CARETCOLOR="red"
else
  CARETCOLOR="white"
fi

MODE_INDICATOR="%{$fg_bold[yellow]%}❮%{$reset_color%}%{$fg[yellow]%}❮❮%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}⚑ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}▴ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}◒ "

# LS colors, made with http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS='di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'
export GREP_COLOR='1;33'

