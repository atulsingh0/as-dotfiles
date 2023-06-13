# function to reload
reload(){
    source $HOME/.zshrc
}

# Loading Few plugins
[ -f $HOME/.config/powerlevel10k/powerlevel10k.zsh-theme ] && source $HOME/.config/powerlevel10k/powerlevel10k.zsh-theme
[ -f $HOME/.config/kube-ps1.sh ] && source $HOME/.config/kube-ps1.sh && RPROMPT='$(kube_ps1)'
[ -f $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh ] &&  source  $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
[ -f $HOME/.config/history-search-multi-word/H-S-MW.plugin.zsh ] &&  source  $HOME/.config/history-search-multi-word/H-S-MW.plugin.zsh
[ -f $HOME/.config/zsh-autosuggestions/zsh-autosuggestions.zsh ] &&  source  $HOME/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f $HOME/.config/zsh-completions/zsh-completions.plugin.zsh ] &&  source  $HOME/.config/zsh-completions/zsh-completions.plugin.zsh
[ -f $HOME/.config/zsh-history-substring-search/zsh-history-substring-search.zsh ] &&  source $HOME/.config/zsh-history-substring-search/zsh-history-substring-search.zsh
[ -f $HOME/.config/.p10k.zsh ] && source $HOME/.config/.p10k.zsh

if [ ! -f $HOME/.config/lsg ]; then
  curl https://raw.githubusercontent.com/gerph/ls-with-git-status/master/lsg -o $HOME/.config/lsg
  chmod u+x $HOME/.config/lsg
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# setting up custom env
export CUSTOM_ALIAS_FOLDER="/Users/atul/work/myJournal/personal"

# aliases
if [ -f "$HOME/work/oh-my-aliases/source-aliases.sh" ]; then . "$HOME/work/oh-my-aliases/source-aliases.sh"; fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.config:${KREW_ROOT:-$HOME/.krew}/bin:/Users/atul/Downloads/TextMate_2.0.23/TextMate.app/Contents/MacOS/mate:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/atul/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/atul/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/atul/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/atul/Downloads/google-cloud-sdk/completion.zsh.inc'; fi