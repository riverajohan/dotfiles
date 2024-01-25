# PATH _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

export PATH=$HOME/.cargo/env:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export GITHUB_TOKEN=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
export COMPOSER_AUTH='{"github-oauth": {"github.com": "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"}}'

# ZAP Plugin Manager for ZSH _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# plugins
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "hlissner/zsh-autopair"
plug "zap-zsh/vim"
plug "Aloxaf/fzf-tab"
plug "Freed-Wu/fzf-tab-source"
plug "zsh-users/zsh-history-substring-search"

# theme
plug "zap-zsh/zap-prompt"

# install completion
plug "esc/conda-zsh-completion"

# KeyBinds _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
export VI_MODE_ESC_INSERT="jk" && plug "zap-zsh/vim"
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# ALIAS _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

alias vvv="cd ~/.config"

# Local
alias projects="cd ~/projects"
alias descf="cd ~/projects/descuentos-online/frontend"
alias descb="cd ~/projects/descuentos-online/backend"

# Work
alias cshop="cd ~/projects/cnet-shopping-extension"
alias cshopsite="cd ~/projects/PriceBlink-Site"
alias cneutron="cd ~/projects/neutron-cnet"
alias bruno="cd ~/projects/bruno"
alias brunoapi="npm run start:api"
alias brunoflow="npm run flow"
alias fwd="cd ~/projects/fwd-nextjs"
alias wpsites="cd ~/'Local Sites'"
alias bestcolleges="cd ~/'Local Sites'/bestcollegescom/app/public"

alias dev="npm run dev"
alias c="clear"
alias lgconfig="cd ~/Library/'Application Support'/lazygit"

# Workflow
alias ll="ls -la"
alias lg="lazygit"
alias lv="lvim"

# _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# FNM
eval "$(fnm env --use-on-cd)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jorivera/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jorivera/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jorivera/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jorivera/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
