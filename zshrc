# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# For GPG
export GPG_TTY=$(tty)

# export MDVIEW_DIR=$HOME/snap/brave-browser/mdview
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
set guicursor=
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-completions
)
autoload -U compinit && compinit
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

#echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
#echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
#echo 'eval "$(pyenv init -)"' >> ~/.zshrc

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Show and search .zshrc file
show() {
  if [[ -n "$1" ]]; then
    grep -i "$1" ~/.zshrc | less
  else
    cat ~/.zshrc | less
  fi
}

# ssh
alias sshstage="ssh dcd@voodystage.voody.io"
alias sshdcd="ssh dcd@dcd.genproresearch.com" 		# ssh ubuntu@dcd.genproresearch.com  ➡ ubuntu user
alias sshpfdev="ssh dcd@pfizerdev.voody.io"
alias sshpfstage="ssh dcd@pfizerstage.voody.io"
alias sshpfepi="ssh dcd@pfizerepi.voody.io"
alias sshsmw="ssh ubuntu@smw.genproresearch.com"
alias sshgitlab="ssh ubuntu@gitlabserver.voody.io" 	# gitlab server
alias sshrunner="ssh ubuntu@52.187.180.150" 		# gitlabrunner(env-update trigger, watch_env, watch_external_services)
alias sshloki="ssh azureuser@loki.voody.io" 		# (table-to-text, loki, grafana, prometheus, sonar) 
alias sshauth="ssh ubuntu@pub.genproresearch.com" 	# DSUR authgenie, smart mapping
alias ssharippa="ssh ubuntu@sortinghat.voody.io"	# Arippa
alias sshcars="ssh ubuntu@4.224.32.158"
alias sshgpu="ssh -p 222 genpro@111.235.68.175"		# GPU
alias sshrmw="ssh ubuntu@maia.rmw.voody.io"		# RMW
alias sshllm="ssh ubuntu@20.197.47.232"			# LLM models 
alias sshvoody="ssh staticwebsites@104.209.251.55" 	# voody.io website host


# Common
alias viz="vim ~/.zshrc"
alias src="source ~/.zshrc"
alias secrets="source ~/.env"
alias sec="bat ~/.env"
alias l="clear"
alias lla='ls -lahGg --time-style=+"%b %d %I:%M%p"'
alias ll='ls -lhGg --time-style=+"%b %d %I:%M%p"'
alias bat="batcat"
alias open="nautilus"

alias tv="codechenx-tv"
alias doc="~/Documents/"
alias dow="~/Downloads/"
alias praneeth="~/Documents/repos/praneeth"
alias repos="~/Documents/repos/"
alias genpro="~/Documents/repos/genpro"
alias dcd="~/Documents/repos/genpro/disease-context-center"
alias pub="~/Documents/repos/genpro/publications"
alias dsur="~/Documents/repos/genpro/dsur-automation"
alias ops="~/Documents/repos/genpro/devops"
alias keys="~/Documents/keys"
alias jnj="~/Documents/repos/jnj"
alias temp="~/Templates"

# Terraform
tfp() {
  terraform plan -var-file="$1"
}
tfa() {
  terraform apply -var-file="$1"
}
tfd() {
  terraform destroy -var-file="$1"
}

function force_delete_namespace() {
    NAMESPACE=$1

    kubectl proxy --port=8888 &
    kubectl get namespace $NAMESPACE -o json | jq '.spec = {"finalizers":[]}' > temp.json
    curl -k -H "Content-Type: application/json" -X PUT --data-binary @temp.json 127.0.0.1:8888/api/v1/namespaces/$NAMESPACE/finalize
}


alias deletens=force_delete_namespace


alias kubex="kubectl exec -it $0 -- bash"


alias tff="terraform fmt -recursive"
alias tf="terraform"
alias tfw="terraform workspace"

# Git
alias pull="git pull origin \$(git symbolic-ref --short HEAD)"
alias push="git push origin \$(git symbolic-ref --short HEAD)"
alias sts="git status"
alias out="git checkout "
alias outb="git checkout -b "
alias add="git add "
alias commit="git commit -m "
alias gb="git branch" #"git symbolic-ref --short HEAD"
alias fetch="git fetch"
alias gittag="git for-each-ref --sort=-creatordate --format '%(refname:short) %(creatordate:short)' refs/tags"

# Docker
alias dcl="docker container ls"
alias dcll='docker ps --format "table {{.ID}}\t{{.Status}}\t{{.Names}}"'
alias dim="docker images"
alias drmi="docker rmi -f"
alias dex="docker exec -it "
alias dcb="cp .env_secret .env && docker compose up --build"
alias dcbn="cp .env_secret .env && docker compose build --no-cache && docker compose up"
alias dcup="docker compose up"
alias dcr="docker compose down --remove-orphans"
alias dlo="docker logs -f "
alias image-size='printf "Total Image size is : %.2f GB\n" "$(docker system df --format '\''{{.Size}}'\'' | head -n 1 | sed '\''s/[^0-9.]*//g'\'')"'
alias delete-none="docker images -a | grep none | awk '{ print $3; }' | xargs docker rmi -f"
alias drm="docker rm -f "
alias image-del=docker rmi -f $(docker images -q)

# Kubernetes
alias k="kubectl"
alias kube="kubectl"
alias ktp="kubectl top pods"
alias ktn="kubectl top nodes"
alias kd="kubectl describe "
alias kg="kubectl get "
alias kdl="kubectl delete "
alias wat="watch -n 1 -t "
alias kube-images="kubectl get node -o json | jq -r '.items[].status.images[].names[]'"
alias argopwd="kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d"

# kubectl create, delete, apply
alias kc=" kubectl create -f "
alias ka=" kubectl apply -f "
alias kd=" kubectl delete -f "
alias klogs=" kubectl logs -f "


# kubectl get
source <( kubectl completion zsh)
alias kgp=" kubectl get pods"
alias kgpwa=" kubectl get pods --watch"
alias kgpwi="kubectl get pods -o wide"
alias kgj="kubectl get jobs"
alias kgcj="kubectl get cronjobs"
alias kgjwa=" kubectl get job --watch"
alias kgjwi="kubectl get job -o wide"
alias kgd=" kubectl get deploy"
alias kgdwa=" kubectl get deploy --watch"
alias kgdwi="kubectl get deploy -o wide"
alias kgn=" kubectl get nodes"
alias kgnwa=" kubectl get node --watch"
alias kgnwi="kubectl get node -o wide"
alias kgsvc=" kubectl get svc"
alias kgsvcwa=" kubectl get svc --watch"
alias kgsvcwi="kubectl get svc -o wide"
alias kgpv=" kubectl get pv"
alias kgpvwa=" kubectl get pv --watch"
alias kgpvwi="kubectl get pv -o wide"
alias kgpvc=" kubectl get pvc"
alias kgpvcwa=" kubectl get pvc --watch"
alias kgpvcwi="kubectl get pvc -o wide"
alias kgns=" kubectl get ns"
alias kgnswa=" kubectl get ns --watch"
alias kgnswi="kubectl get ns -o wide"
alias kgrs=" kubectl get rs"
alias kgsc="kubectl get storageclass"
alias kgrswa=" kubectl get rs --watch"
alias kgrswi="kubectl get rs -o wide"
alias kgcm=" kubectl get configmap"
alias kgst=" kubectl get secret"
alias kging=" kubectl get ing"
alias kgingwa=" kubectl get ing --watch"
alias kgingwi="kubectl get ing -o wide"
alias kghpa="kubectl get hpa "
alias kgvpa="kubectl get vpa "
alias kgsm="kubectl get servicemonitor "
alias kgsa="kubectl get sa"

#Namespcaes
alias kgpn="kubectl get pods -n"
alias kgpnwide="kubectl get pods -o wide -n"
alias kgpnwatch="kubectl get --watch -n "
alias kgdn="kubectl get deploy -n"
alias krdn="kubectl rollout restart deploy \$1 -n \$2"


# kubectl describe
alias kdp=" kubectl describe pod "
alias kdj=" kubectl descirbe job"
alias kdcj="kubectl describe cronjob"
alias kdd=" kubectl describe deploy "
alias kdn=" kubectl describe node "
alias kdsvc=" kubectl describe svc "
alias kdsc="kubectl describe storageclass"
alias kdpv=" kubectl describe pv "
alias kdpvc=" kubectl describe pvc "
alias kdns=" kubectl describe ns"
alias kdrs=" kubectl describe rs "
alias kdcm=" kubectl describe configmap "
alias kdst=" kubectl describe secret "
alias kding= "kubectl describe ingress "
alias kdhpa=" kubectl describe hpa "
alias kdvpa=" kubectl describe vpa "
alias kdsm="kubectl describe servicemonitor"

# kubectl delete
alias kdlp="kubectl delete pod "
alias kdld="kubectl delete deploy "
alias kdlhpa="kubectl delete hpa"
alias kdlsvc="kubectl delete svc "
alias kdlpvc="kubectl delete pvc "
alias kdlpv="kubectl delete pv "
alias kdlst="kubectl delete secret "
alias kdlj="kubectl delete job "
alias kdlcj="kubectl delete cronjob "
alias kdlcm="kubectl delete configmap "
alias kdlrs="kubectl delete rs "
alias kdlsc="kubectl delete storageclass"
alias kdling="kubectl delete ing "
alias kdlsm="kubectl delete servicemonitor"

alias sc="screen"
alias tm="terminator &"
# restarts
alias krd="kubectl rollout restart deploy "

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

alias ktx="kubectx"
alias kns="kubens"
autoload -U compinit && compinit

# Jmeter
export PATH="/opt/apache-jmeter-5.5/bin":$PATH

# Sonar-scanner
export PATH="/usr/local/sonar-scanner-cli-4.8.0.2856-linux/sonar-scanner-4.8.0.2856-linux/bin:$PATH"

# Minikube
alias mil="minikube image load "
alias mir="minikube image rm "

# Network
alias myip="curl ifconfig.io"

alias mk="make"


# ~/.starship
eval "$(starship init zsh)"

# Maven and Java
export PATH=/usr/local/bin:"$PATH"
export PATH=/usr/local/apache-maven-3.8.6/bin:$PATH

# Krew for Kubernetes
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fpath=(/home/praneeth/.oh-my-zsh/custom/completions /home/praneeth/.oh-my-zsh/custom/plugins/zsh-completions /home/praneeth/.oh-my-zsh/custom/plugins/zsh-autosuggestions /home/praneeth/.oh-my-zsh/plugins/git /home/praneeth/.oh-my-zsh/functions /home/praneeth/.oh-my-zsh/completions /home/praneeth/.oh-my-zsh/cache/completions /usr/local/share/zsh/site-functions /usr/share/zsh/vendor-functions /usr/share/zsh/vendor-completions /usr/share/zsh/functions/Calendar /usr/share/zsh/functions/Chpwd /usr/share/zsh/functions/Completion /usr/share/zsh/functions/Completion/AIX /usr/share/zsh/functions/Completion/BSD /usr/share/zsh/functions/Completion/Base /usr/share/zsh/functions/Completion/Cygwin /usr/share/zsh/functions/Completion/Darwin /usr/share/zsh/functions/Completion/Debian /usr/share/zsh/functions/Completion/Linux /usr/share/zsh/functions/Completion/Mandriva /usr/share/zsh/functions/Completion/Redhat /usr/share/zsh/functions/Completion/Solaris /usr/share/zsh/functions/Completion/Unix /usr/share/zsh/functions/Completion/X /usr/share/zsh/functions/Completion/Zsh /usr/share/zsh/functions/Completion/openSUSE /usr/share/zsh/functions/Exceptions /usr/share/zsh/functions/MIME /usr/share/zsh/functions/Math /usr/share/zsh/functions/Misc /usr/share/zsh/functions/Newuser /usr/share/zsh/functions/Prompts /usr/share/zsh/functions/TCP /usr/share/zsh/functions/VCS_Info /usr/share/zsh/functions/VCS_Info/Backends /usr/share/zsh/functions/Zftp /usr/share/zsh/functions/Zle /home/praneeth/.oh-my-zsh/custom/plugins/zsh-completions/src /home/praneeth/.oh-my-zsh/custom/plugins/zsh-completions/src)
source /home/praneeth/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Pyenv setup
PYENV_ROOT="$HOME/.pyenv"
if ! grep -qxF 'export PYENV_ROOT="$HOME/.pyenv"' ~/.zshrc; then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
fi

if ! grep -qxF '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' ~/.zshrc; then
    echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
fi

if ! grep -qxF 'eval "$(pyenv init -)"' ~/.zshrc; then
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
fi

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
