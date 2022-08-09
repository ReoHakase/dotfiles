if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr --add cfgfish code ~/.config/fish/config.fish
abbr --add cfgstarship code ~/.config/fish/starship.toml
abbr --add lt exa -T -L 3

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv) # homebrewにパスを通す
starship init fish | source # プロンプトをきれいにするstarshipの実行用 

#Nodeバージョン管理ツールVolta用
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# rustup
set -gx PATH "$HOME/.cargo/bin" $PATH

# WSLからブラウザを開けるように
set BROWSER "pwsh.exe /c start"