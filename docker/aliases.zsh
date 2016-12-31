alias d='docker'
alias d-c='docker-compose'
alias docker-clean='docker rm -v $(docker ps -a -q -f status=exited);docker rmi $(docker images -f "dangling=true" -q)'
