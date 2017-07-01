#!/bin/bash
set -e

# Jupyter Notebook test
# based on  http://blog.snapdragon.cc/2016/01/02/unit-testing-for-jupyter-ipython-notebooks/

jupyter nbconvert --to=html --ExecutePreprocessor.enabled=True --ExecutePreprocessor.timeout=3600  $1

