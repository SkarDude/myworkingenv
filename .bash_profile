# bashrc run
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Aliases
alias dock='cd development/dredbeard_dev/; docker-machine start; docker-machine ls; eval $(docker-machine env default); docker-machine ls; docker-compose build; echo "*************To start server type: docker-compose up"'
alias s='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias tests='docker-compose run web python manage.py test api bbgun core eis notifications rbd redbeard tbd tbd_archive timelog'
alias pym='docker-compose run web python manage.py'
alias dredtest='docker-compose run web coverage run --omit=*migrations* manage.py test api bbgun core eis notifications rbd redbeard tbd tbd_archive timelog'
alias dredhtml='docker-compose run web coverage html'
alias dredreport='docker-compose run web coverage report --omit=*migrations*'

