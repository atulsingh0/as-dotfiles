ZSH_THEME="powerlevel10k/powerlevel10k" # set by `omz`

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/Users/atul/Downloads/TextMate_2.0.23/TextMate.app/Contents/MacOS/mate:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
plugins=(zsh-syntax-highlighting zsh-autosuggestions zsh-completions zsh-history-substring-search)
source $ZSH/oh-my-zsh.sh


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/atul/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/atul/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/atul/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/atul/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ -f ~/.p10k.zsh ] && source ~/.p10k.zsh

# Created by `pipx` on 2023-03-21 20:42:26
export PATH="$PATH:/Users/atul/.local/bin"

# setting up custom env
export CUSTOM_ALIAS_FOLDER="/Users/atul/work/myJournal/personal"

# aliases
if [ -f '/Users/atul/work/oh-my-aliases/source-aliases.sh' ]; then . '/Users/atul/work/oh-my-aliases/source-aliases.sh'; fi
