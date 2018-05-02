# Git-centric variation of the "fishy" theme.
# See screenshot at http://ompldr.org/vOHcwZg

ZSH_THEME_GIT_PROMPT_ADDED="A "
ZSH_THEME_GIT_PROMPT_MODIFIED="M "
ZSH_THEME_GIT_PROMPT_DELETED="D "
ZSH_THEME_GIT_PROMPT_RENAMED="R "
ZSH_THEME_GIT_PROMPT_UNMERGED="U "
ZSH_THEME_GIT_PROMPT_UNTRACKED="?? "

purple="%F{135}"
turquoise="%F{81}"
orange="%F{166}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

local user_color='green'
test $UID -eq 0 && user_color='red'

PROMPT='%(?..%{$fg_bold[red]%}exit %?
%{$reset_color%})'\
'%{$fg[red]%}$(git_prompt_status)%{$bold_color%}%F{166}$(git_prompt_info)'\
' %F{135}%~%{$reset_color%}'\
'%(!.#.) '

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
