Flux ZSH
===============

ZSH plugin and theme for making Flux development environment more handy.

Theme
---------

Flux theme is based on `robbyrussell.zsh-theme`. The only thing it adds is displaying current market in ZSH
prompt based on the value from `.env` file.

Plugin
---------

Flux plugin contains functions for checking if current directory is Flux codebase and function for changing current
market in `.env` file. It also defines aliases below:

```
# command line market shortcut
alias nz="PS_MARKET=nz"
alias au="PS_MARKET=au"
alias uk="PS_MARKET=uk"

# shortcut for changing market in .env
alias NZ="chmarket nz"
alias AU="chmarket au"
alias UK="chmarket uk"

# rails related shortcuts
alias be='bundle exec'
alias nuke='RAILS_ENV=test be rake db:drop db:create db:schema:load db:migrate'
```

Installation
---------

Instalaltion is quite simple, just clone the `flux_zsh` repo and copy/link theme and plugin to directory 
containing custom `oh_my_szh` configuration. Path to this directory is stored in `$ZSH_CUSTOM` environment 
variable and initially it is `~/.oh_my_zsh/custom`.

```
$ git clone git@git.fluxfederation.com:vladimir/flux_zsh.git
$ ln -s /path_to_flux_zsh/plugins/flux/ ~/.oh-my-zsh/custom/plugins/flux
$ ln -s /path_to_flux_zsh/themes/flux.zsh-theme ~/.oh-my-zsh/custom/themes/flux.zsh-theme
```

