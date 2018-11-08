
IMAGES := $(shell docker images -f "dangling=true" -q)
CONTAINERS := $(shell docker ps -a -q -f status=exited)

clean:
	docker rm -f $(CONTAINERS)
	docker rmi -f $(IMAGES)
	
fetch:
	git clone https://github.com/NatLibFi/Annif.git
	git clone https://github.com/NatLibFi/Annif-corpora.git
	
build:
	docker build -t artturimatias/annif .
	
start:
	docker run -it --name annif \
	-v $(PWD)/Annif-corpora:/usr/src/app/corpora \
	-p 5000:5000 \
	artturimatias/annif bash
