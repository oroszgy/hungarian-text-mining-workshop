
build:
	docker build -t hungarian-text-mining-workshop .

test1:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 hungarian-text-mining-workshop ./ntest.sh 1_Intro.ipynb

test2:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 hungarian-text-mining-workshop ./ntest.sh 2_TextCategorization.ipynb

test3:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 hungarian-text-mining-workshop ./ntest.sh 3_EntitiesAndConcepts.ipynb

start:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 hungarian-text-mining-workshop ./jupyter.sh

dev:
	docker run -it --rm -v $$(pwd):/workshop -p 8888:8888 hungarian-text-mining-workshop bash
