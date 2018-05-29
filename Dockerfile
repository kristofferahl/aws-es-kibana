FROM node:9-alpine
LABEL maintainer="Kristoffer Ahl <kristoffer.ahl@dotnetmentor.se>"
ARG AWS_ES_KIBANA_VERSION=1.0.7
RUN npm install -g aws-es-kibana@${AWS_ES_KIBANA_VERSION:?}
EXPOSE 9200
ENTRYPOINT [ "aws-es-kibana", "-b", "0.0.0.0" ]
