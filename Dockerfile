FROM ubuntu:14.04

MAINTAINER Luciano Afranllie <luafran@gmail.com>

# ENV http_proxy=http://proxy-us.intel.com:911 https_proxy=http://proxy-us.intel.com:911

# Install system packages
RUN apt-get update

COPY ./ /tmp/build/
WORKDIR /tmp/build
RUN cat requirements.system | xargs apt-get install -y
RUN pip install -r requirements.txt

# Run app
# ENTRYPOINT ["prjname-runservice"]
# CMD ["service1", "--port", "10001"]
