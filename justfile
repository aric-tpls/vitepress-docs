_default:
    @just --list

alias b := build
alias dw := down
alias st := stop
alias re := restart
alias pv := preview

# backend dev server (background)
up:
  overmind start -D -f Procfile.dev

build:
  pnpm build

# stop gracefully
down:
  overmind quit

# kill all processes immediately
stop:
  overmind kill

# restart
restart:
  overmind restart

# show process status
ps:
  overmind status


# preview
preview:
  gsv dist -p 4173