
build:
	docker build -t oroszgy/hungarian-text-mining-workshop:1.0 .
	docker tag oroszgy/hungarian-text-mining-workshop:1.0 oroszgy/hungarian-text-mining-workshop:latest

push:
	docker push oroszgy/hungarian-text-mining-workshop:1.0
	docker push oroszgy/hungarian-text-mining-workshop:latest

test1:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 oroszgy/hungarian-text-mining-workshop:latest ./ntest.sh 1_Intro.ipynb

test2:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 oroszgy/hungarian-text-mining-workshop:latest ./ntest.sh 2_TextCategorization.ipynb

test3:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 oroszgy/hungarian-text-mining-workshop:latest ./ntest.sh 3_EntitiesAndConcepts.ipynb

start:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 oroszgy/hungarian-text-mining-workshop:latest ./jupyter.sh

dev:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 oroszgy/hungarian-text-mining-workshop:latest bash
