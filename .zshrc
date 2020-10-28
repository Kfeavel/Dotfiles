# Check for tmux sessions and launch one if one doesn't exist
#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  tmux a -t default || exec tmux new -s default && exit;
#fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/keeton/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Cowsay at startup
fortune | cowthink -f flaming-sheep | lolcat

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(osx vscode xcode git brew git-extras node npm)

source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="vim ~/.zshrc"
alias gl="git log --graph --oneline --decorate"
alias push="git push"
alias pop="git stash pop"
alias pull="git pull"
alias stash="git stash"
alias make="make -j8"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="$HOME/Applications/Panix/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-14.0.1.jdk/Contents/Home"
export GOPATH="$HOME/Library/Application Support/go/"
export GPG_TTY=$(tty)

# Made history size massive
HISTSIZE=99999
HISTFILESIZE=999999

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Panix Compilation Flag Extras
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/Applications/Panix/lib
export LD_FLAGS="-L$HOME/Applications/Panix/lib/gcc/i686-elf/10.2.0"
