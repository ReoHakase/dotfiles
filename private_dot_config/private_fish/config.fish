if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr --add exaa exa -a -l --no-time --no-user --git -I=.git --git-ignore --icons --tree -L=9

# Homebrew - Package Manager for macOS
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Starship - Prompt Formatter
starship init fish | source

# Volta - Node version manager
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# rustup
set -gx PATH "$HOME/.cargo/bin" $PATH

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# WSL
set BROWSER "pwsh.exe /c start"