if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr --add exaa exa -a -l --no-time --no-user --git -I=.git --git-ignore --icons --tree -L=9

# Homebrew - Package Manager for macOS
if test -n (command -v brew)
  eval (brew shellenv)
end

# Starship - Prompt Formatter
starship init fish | source

# rustup
set -gx PATH "$HOME/.cargo/bin" $PATH

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

# proto
set -gx PROTO_HOME "$HOME/.proto"
set -gx PATH "$PROTO_HOME/shims:$PROTO_HOME/bin" $PATH