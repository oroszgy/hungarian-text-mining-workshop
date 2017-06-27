### Pandas

* "... provides fast, flexible, and expressive data structures designed to make working with “relational” or “labeled” data both easy and intuitive."
* "The two primary data structures of pandas, `Series` (1-dimensional) and `DataFrame` (2-dimensional), handle the vast majority of typical use cases in finance"
* can easily handle various input formats, such as csv, excel, json, sql, hdf5, html


import pandas as pd

df = pd.DataFrame({"Feature1": ["a", "a", "b", "c"], "Feature2": [5,4,2,4], "Label": [1, 0, 0, 1]})

df.Label

type(df.Label)

df.Label.value_counts()

df.iloc[:2]

df[df.Label>0]

https://pandas.pydata.org/pandas-docs/stable/10min.html

### Scikit-learn

#### API overview

* `X` is a 2D matrix, rows represents data points, columns contains feature values
* `y` is a 1D array containing the labels

class SklearnPredictor:
    def fit(self, X, y):
        """
        Learning to classify from the data
        """
        return self
    
    def predict(X):
        """
        Predict from the data
        """
        return predictions
        
class SklearnTransformer:
    def fit(self, X, y=None):
        """
        Learning to transforming the data
        """
        return self
    
    def transform(X):
        """
        Transform the data
        """
        return transformed_data
        
from sklearn.pipeline import Pipeline

Pipeline([
    ("transformer1", SklearnTransformer()),
    ("transformer2", SklearnTransformer()), # ...
    ("mypredictor", SklearnPredictor()),
])

#### [DBpedia Spotlight](https://github.com/dbpedia-spotlight/dbpedia-spotlight)

... is a tool for automatically annotating mentions of DBpedia/Wikipedia resources in text. ([Try it out!](http://demo.dbpedia-spotlight.org/))

<img src="./img/dbpedia.png" alt="Sptlight" style="width: 600px;"/>


Could be used for

* finding/disambiguating named entities
* extracting topics from raw text


#### Magyarlanc / HuNLP

* [`magyarlanc`](http://www.inf.u-szeged.hu/rgai/magyarlanc) is a Hungarian NLP pipeline, can perform 
   * tokenization
   * sentence segmentation
   * PoS tagging
   * lemmatization
   * dependency parsing
* but
   * can be used only through the CLI
   * no easily usable API
   * not thread safe
   
* [HuNLP](https://github.com/oroszgy/hunlp) wraps magyarlanc and [Szeged NER](http://www.inf.u-szeged.hu/rgai/NER)
   * merges NER results with the output of magyarlanc
   * convenient programatic API
   * REST API
   * Dockerized
   
### Sklearn

* ML 101
* http://ogrisel.github.io/scikit-learn.org/sklearn-tutorial/tutorial/text_analytics/general_concepts.html

----------------------------------------------------------------------

# TODO

* sentence splitter
* hunlp docker

