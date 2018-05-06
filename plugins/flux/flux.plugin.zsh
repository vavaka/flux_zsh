function flux_root() {
  git rev-parse --show-toplevel 2> /dev/null
}

function flux_market() {
  if [[ -n "$(flux_root)" ]]; then
    sed -E 's/.*PS_MARKET=([a-z]+).*/\1/' $(flux_root)/.env 2> /dev/null
  fi
}

function chmarket() {
  if [[ -n "$(flux_market)" ]]; then
    sed -i '' "s/PS_MARKET=.*/PS_MARKET=$1/" $(flux_root)/.env
  fi
}

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
