
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/devin/anaconda3/bin/conda
    eval /Users/devin/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<


set -x EDITOR nvim
set -x  nvim
#set -x GOPROXY https://mirrors.aliyun.com/goproxy/
set -x GOPATH $HOME/go
set -x SPACEMACSDIR $HOME/.spacemacs.d
set -gx PATH $PATH /opt/homebrew/bin
set -gx PATH $PATH /opt/homebrew/opt/llvm/bin
set -gx PATH $PATH /opt/homebrew/opt/ruby/bin
set -gx PATH $PATH $GOPATH/bin

set -gx LDFLAGS "-L/opt/homebrew/opt/ruby@3.0/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/ruby@3.0/include"


alias vim 'nvim'
alias pq 'proxychains4 -q'
alias bb 'rlwrap bb'

source $HOME/.config/fish/functions/sdk.fish

# You must call it on initialization or listening to directory switching won't work
load_nvm > /dev/stderr
rvm default
