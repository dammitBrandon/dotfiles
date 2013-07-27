export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/sm/bin:/opt/sm/pkg/active/bin:/opt/sm/pkg/active/sbin
export LSCOLORS=gxfxcxdxbxegedabagacad
source ~/Documents/dotfiles/setup.sh
alias ls="ls -G"
declare -r PROMPT_COMMAND="~/bin/pokemon.rb"

[[ -r "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# ALIASES
  # path
    alias     ..="cd .."
    alias    ...="cd ../.."
    alias   ....="cd ../../.."
    alias  .....="cd ../../../.."
    alias ......="cd ../../../../.."
      # -l  long format
      # -F  / after dirs, * after exe, @ after symlink
      # -G  colorize
      # -g suppress owner
      # -o suppress group
      # -h humanize sizes
      # -q print nongraphic chars as question marks
    alias l="ls -FG"

    # override cd b/c I always want to list dirs after I cd
    # note that this won't work with rvm b/c it overrides cd.
    cd() {
      builtin cd "$@"
      l
    }


    alias gsh="  git s"                                                      # git show with my custom options (see gitconfig)
    alias gs="   git status"
    alias gd="   git d"                                                      # git diff with my custom options
    alias go="   colour-stderr-red git checkout"
    alias gb="   git branch"
    alias ga="   git add"
    alias gc="   git commit --verbose"
    alias gp="   git push"
    alias gh="   git hist"
