# Annif-docker

This is an experimental docker setup for [Annif](https://github.com/NatLibFi/Annif.git)


## usage

First clone this repo:

    git clone https://github.com/artturimatias/Annif-docker.git
    cd Annif-docker
Then fetch Annif and its corpus, build image and then start it.

    make fetch
    make build
    make start

This should drop you to an interactive shell. Now you can invoke pipenv shell:

    pipenv shell
    
Now you are on your own and can continue according to [this](https://github.com/NatLibFi/Annif/wiki/Getting-started).
