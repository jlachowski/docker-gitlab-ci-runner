FROM sameersbn/gitlab-ci-runner:latest
MAINTAINER jalachowski@gmail.com

#add python/django specific requirements
RUN apt-get update && \
		apt-get install -y python-pip python-dev build-essential \
            checkinstall zlib1g-dev libyaml-dev libssl-dev \
            memcached libmemcache-dev python-imaging libjpeg8-dev \
            unzip zlib1g libfreetype6 libfreetype6-dev \
            libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0 \
            libgdk-pixbuf2.0-dev \
			libgdbm-dev libreadline-dev libncurses5-dev libffi-dev \
			libxml2-dev libxslt-dev libcurl4-openssl-dev libicu-dev \
			fontconfig libgeoip-dev \
			python-numpy python-scipy && \
		apt-get clean
#setup virtualenv
RUN pip install virtualenv && \
		pip install virtualenvwrapper && \
		echo "export WORKON_HOME=~/.virtualenvs" >> /home/gitlab_ci_runner/.bashrc && \
		echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/gitlab_ci_runner/.bashrc && \
		chown gitlab_ci_runner:gitlab_ci_runner /home/gitlab_ci_runner/.bashrc
