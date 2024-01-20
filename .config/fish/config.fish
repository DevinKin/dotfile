
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/devin/anaconda3/bin/conda
    eval /Users/devin/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<


set -x EDITOR nvim
set -x  nvim
set -x GOPROXY https://mirrors.aliyun.com/goproxy/
set -x SPACEMACSDIR $HOME/.spacemacs.d
set -gx PATH $PATH /opt/homebrew/bin



alias vim 'nvim'
alias pq 'proxychains4 -q'
alias bb 'rlwrap bb'

source $HOME/.config/fish/functions/sdk.fish

