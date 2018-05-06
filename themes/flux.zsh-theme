function flux_market_color() {
  declare -A MARKET_COLORS
  MARKET_COLORS[nz]=green
  MARKET_COLORS[au]=yellow
  MARKET_COLORS[uk]=blue

  echo "${MARKET_COLORS[$1]}"
}

function flux_prompt() {
  local market="$(flux_market)"
  if [[ -n $market ]]; then
    local market_color=$(flux_market_color $market)
    echo "%{$fg[$market_color]%}$market%{$reset_color%} "
  fi
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(flux_prompt)$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
