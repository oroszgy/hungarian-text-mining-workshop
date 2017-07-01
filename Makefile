
build:
	docker build -t hungarian-text-mining-workshop .

start:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 hungarian-text-mining-workshop ./jupyter.sh

dev:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 hungarian-text-mining-workshop bash
