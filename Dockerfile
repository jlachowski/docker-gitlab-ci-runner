FROM sameersbn/gitlab-ci-runner:latest
MAINTAINER jalachowski@gmail.com

RUN apt-get update && \
		apt-get install -y python-pip python-dev build-essential \
                        checkinstall zlib1g-dev libyaml-dev libssl-dev \
                        memcached libmemcache-dev python-imaging libjpeg8-dev \
                        unzip zlib1g libfreetype6 libfreetype6-dev \
                        libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0 \
                        libgdk-pixbuf2.0-dev \
			libgdbm-dev libreadline-dev libncurses5-dev libffi-dev \
			libxml2-dev libxslt-dev libcurl4-openssl-dev libicu-dev \
			fontconfig libgeoip-dev && \
		apt-get clean
