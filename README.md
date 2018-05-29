# aws-es-kibana

An alpine base docker image running the [aws-es-kibana](https://github.com/santthosh/aws-es-kibana) proxy service.

## Running the container

```bash
docker run --rm \
  -e AWS_ACCESS_KEY_ID=<ACCESS_KEY_ID> \
  -e AWS_SECRET_ACCESS_KEY=<SECRET_ACCESS_KEY> \
  -e USER=kibana \
  -e PASSWORD=adminparty \
  -p 9200:9200 \
  kristofferahl/aws-es-kibana:latest \
  <ELASTICSEARCH_SERVICE_DOMAIN_ENDPOINT>
```
