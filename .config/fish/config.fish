
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/anaconda3/bin/conda
    eval /opt/anaconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/opt/anaconda3/etc/fish/conf.d/conda.fish"
        . "/opt/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /opt/anaconda3/bin $PATH
    end
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
set --universal nvm_default_version v20.11.1

# sdkman
set -g __sdkman_custom_dir ~/.sdkman/

# flutter
set -gx PATH $PATH "$HOME/flutter/bin"
set -gx PUB_HOSTED_URL "https://pub.flutter-io.cn"
set -gx FLUTTER_STORAGE_BASE_URL "https://storage.flutter-io.cn"

set -gx CPATH "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include"

# rust
set -gx PATH $PATH $HOME/.cargo/bin
