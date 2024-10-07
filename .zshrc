# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/daniel/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cobalt2"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  npm
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias
alias ea='edit ~/.zshrc' #'code ~/.dotfiles.code-workspace'
alias ra='source ~/.zshrc'

# ls
alias ls='ls -GFh'
alias ll='ls -a'

# cd
cd() { builtin cd "$@"; ll; }
alias cd..='cd ..'
alias ..='cd ../'
alias ...='cd ../../'				# Go back 2 directory levels
alias .3='cd ../../../'				# Go back 3 directory levels
alias .4='cd ../../../../'			# Go back 4 directory levels
alias .5='cd ../../../../../'		# Go back 5 directory levels
alias .6='cd ../../../../../../'	# Go back 6 directory levels
alias cddev='cd ~/dev'

# other
alias c='clear'
alias e='open .'
alias edit='vim' #'code'
alias path='echo -e ${PATH//:/\n}'
mkcd () { mkdir -p "$1" && cd "$1"; }	#Makes new Dir and jumps inside
alias vscodex='code --list-extensions | xargs -L 1 echo code --install-extension'
alias air='BluetoothConnector 08-e6-89-72-e8-d0 --notify'

#dev
alias dev='bun run dev'
alias start='bun run start'
function newapp() { npx create-next-app -e https://github.com/b4conjuice/with-bacon "$1"; }

# git
function ga() { git add "$1"; }
alias gaa='echo "use git add . instead"'
alias gap='git add -p'
alias gb='git branch -v'
function gc() {
	git commit -m "$1";
}
function gch() {
  git checkout "$@";
}
function gd() {
 if [[ -z $@ ]]
 then
  git diff -- . ":(exclude)package-lock.json";
 else
  git diff "$@"
 fi
}
alias gl='git log'
alias gr='git remote -v'
alias gs='git status'
function gbc() {
  git branch -v "$1";
  git checkout "$1";
}
alias develop='gch develop'
alias main='gch main'
alias master='gch master'
alias db-update='npx prisma db push'
alias db-start='npx prisma studio'
function vs-settings() {
  mkdir .vscode;
  cp ~/dev/bacon.build/b4-app/.vscode/settings.json .vscode/settings.json;
}
alias t3='pnpm create t3-app@latest --noGit'
alias bacode='code ~/dev/baconponents'
alias b4code='code ~/dev/bacon.build/b4-app'
alias sand='code ~/dev/sand'
function b4-pages-router() { # TODO: rename to b4-pages
  cp -r ~/dev/bacon.build/b4-app/src/components src
  cp -r ~/dev/bacon.build/b4-app/public/. public
  trash public/favicon.ico
  vs-settings
  pnpm i @bacondotbuild/ui@latest
}
function b4() {
  # cp -r ~/dev/bacon.build/b4-app/apps/app/src/app/_components/. src/app/_components
  mkdir src/components
  cp -r ~/dev/b4-app/apps/app/src/components/ui src/components/ui
  cp -r ~/dev/b4-app/apps/app/public/. public
  cp -r ~/dev/b4-app/apps/app/src/app/layout.tsx src/app/layout.tsx
  trash public/favicon.ico
  vs-settings
  pnpm i classnames
}
alias 'b.b'='cd ~/dev/bacon.build'
function git-config-bacon {
  git config user.name 'bacon.build'
  git config user.email 'bacondotbuild@gmail.com'
}
function b4-pkg(){
  git clone https://github.com/bacondotbuild/b4-pkg "$1";
}

alias fix-mission-control='killall Dock'
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#. ~/z.sh
. /opt/homebrew/etc/profile.d/z.sh
#source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
eval "$(fnm env --use-on-cd)"
