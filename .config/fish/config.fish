
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/devin/anaconda3/bin/conda
    eval /Users/devin/anaconda3/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<


set -x EDITOR nvim
set -x nvim
set -x GOPROXY https://mirrors.aliyun.com/goproxy/
set -x GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin

set -x SPACEMACSDIR $HOME/.spacemacs.d
set -gx PATH $PATH /opt/homebrew/bin
set -gx PATH $PATH /opt/homebrew/opt/llvm/bin
set -gx PATH $PATH /opt/homebrew/opt/ruby/bin
set -gx PATH $PATH $HOME/.nvm/bin

# proxy
set https_proxy "http://127.0.0.1:7890"
set http_proxy "http://127.0.0.1:7890"
set all_proxy "socks5://127.0.0.1:7890"

# homebrew
set -gx HOMEBREW_BREW_GIT_REMOTE "https://mirrors.ustc.edu.cn/brew.git"
set -gx HOMEBREW_API_DOMAIN "mirrors.ustc.edu.cn/homebrew-bottles/api/"
set -gx HOMEBREW_BOTTLE_DOMAIN "https://mirrors.ustc.edu.cn/homebrew-bottles/bottles"

set -gx LDFLAGS "-L/opt/homebrew/opt/ruby@3.0/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/ruby@3.0/include"


alias vim nvim
alias pq 'proxychains4 -q'
alias bb 'rlwrap bb'
alias lg lazygit
alias jo joshuto


# nvm
set --universal nvm_default_version lts

# sdkman
set -g __sdkman_custom_dir ~/.sdkman/

# flutter
set -gx PATH $PATH "$HOME/flutter-dev/flutter/bin"
