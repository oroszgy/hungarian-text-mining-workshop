# Text mining workshop

## Preparation for the workshop

Please be prepared with

* basic knowledge of Python
* experience in using Jupyter notebooks

During the course we will use little bit of Pandas ([10 minute intro](https://pandas.pydata.org/pandas-docs/stable/10min.html)) and [scikit-learn](http://scikit-learn.org/stable/) to build simple machine learning models.

## Install dependencies and run the notebooks

### The easy way: using Docker

Get the docker image: `docker pull oroszgy/hungarian-text-mining-workshop`

Start Jupyter Notebook: `make start`

### The hard way: installing the packages manually

0. Make sure you have Python 3.5+ installed (preferably a conda distribution)
1. Clone this repository: `git clone http://github.com/oroszgy/hungarian-text-mining-workshop && cd hungarian-text-mining-workshop`
2. Install the necessary packages: `pip install -r requirements.txt`
3. Download the Enlgish and the Hungaruan NLP models for spaCy:
    * `python -m spacy download en`
    * `pip install https://github.com/oroszgy/spacy-hungarian-models/releases/download/hu_tagger_web_md-0.1.0/hu_tagger_web_md-0.1.0.tar.gz`
4. Install HuNlpy
    * `pip install https://github.com/oroszgy/hunlp/releases/download/0.2/hunlp-0.2.0.tar.gz`

Start Jupyter Notebook: `jupyter notebook`

## Table of Contents

1. [Practical NLP in Python: `spaCy` and `textacy`, Describing documents with words](./1_Intro.ipynb)
2. [Document categorization, Sentiment analysis](./2_TextCategorization.ipynb)
3. [Extracting named entities and concepts](./3_EntitiesAndConcepts.ipynb)

## Softwares used

* [spaCy](https://spacy.io)
* [Hungarian model for spaCy](https://github.com/oroszgy/spacy-hungarian-models)
* [textacy](http://textacy.readthedocs.io/)
* [scikit-learn](http://scikit-learn.org/stable/)
* [HuNlp](https://github.com/oroszgy/hunlp)
* [DBpedia Spotlight](http://www.dbpedia-spotlight.org/)

---

(c) Gyorgy Orosz, 2017
