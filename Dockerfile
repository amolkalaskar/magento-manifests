FROM docker.elastic.co/elasticsearch/elasticsearch:8.6.2
# RUN rm -rf /usr/share/elasticsearch/config/jvm.options.d && rm -rf /usr/share/elasticsearch/config/jvm.options
# COPY ./elasticsearch/jvm.options /usr/share/elasticsearch/config/jvm.options

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install \
  analysis-icu \
  analysis-phonetic


USER root