#Getting base image ubuntu
FROM ubuntu:18.04
MAINTAINER Prakash Dahal <prakashd19880@gmail.com>
#RUN apt-get update && apt-get install -y --no-install-recommends curl && apt-get clean
RUN apt-get update && apt-get install -y curl
COPY /movies-rating.sh .
CMD ["bash", "movies-rating.sh"]
