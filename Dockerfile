FROM sameersbn/gitlab-ci-runner:latest
MAINTAINER jalachowski@gmail.com

RUN apt-get update && \
		apt-get install -y python-pip python-dev build-essential \
            checkinstall zlib1g-dev libyaml-dev libssl-dev \
			libgdbm-dev libreadline-dev libncurses5-dev libffi-dev \
			libxml2-dev libxslt-dev libcurl4-openssl-dev libicu-dev \
			fontconfig && \
		apt-get clean
