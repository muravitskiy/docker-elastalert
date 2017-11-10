# docker-elastalert
Docker image for https://github.com/Yelp/elastalert

## What is elastalert?

ElastAlert is a simple framework for alerting on anomalies, spikes, or other patterns of interest from data in Elasticsearch.

## How to use this image

Starting `elastalert` instance is simple:

```bash
$ docker run -v /path/to/config.yaml:/config.yaml -v /path/to/rules/:/rules -d elastalert:tag
```
where `config.yaml` is a main config file and `rules` is a directory where all rules are located. Tag is the tag specifying the `elastalert` version you want. See the list above for relevant tags. 
