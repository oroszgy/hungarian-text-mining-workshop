FROM python:3.6

RUN git clone http://github.com/oroszgy/hungarian-text-mining-workshop

WORKDIR hungarian-text-mining-workshop

RUN  pip install --no-cache-dir -r requirements.txt \
  && rm -r /root/.cache

RUN python -m spacy download en \
  && rm -r /root/.cache

RUN pip install --no-cache-dir  https://github.com/oroszgy/spacy-hungarian-models/releases/download/hu_tagger_web_md-0.1.0/hu_tagger_web_md-0.1.0.tar.gz \
  && rm -r /root/.cache

RUN pip install --no-cache-dir https://github.com/oroszgy/hunlp/releases/download/0.2/hunlp-0.2.0.tar.gz \
  && rm -r /root/.cache

WORKDIR /workshop 
EXPOSE 8888


#  hungarian-text-mining-workshop   latest              f6a4a04eefba        15 minutes ago      5.09GB
#  hungarian-text-mining-workshop   latest              aaabc2a6cbd7        22 seconds ago      2.81GB
#  hungarian-text-mining-workshop   latest              f0a370edd9f8        8 seconds ago       2.81GB
#  hungarian-text-mining-workshop   latest              263cf3f65f8b        About an hour ago   2.81GB


#  FROM python:3.6-slim
#   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#   rm -rf /root/.cache /tmp/* /var/tmp/*