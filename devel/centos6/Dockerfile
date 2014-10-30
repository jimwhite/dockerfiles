FROM centos:centos6
MAINTAINER Jim White <mailto:jimwhite@uw.edu>

ENV USER root
ENV HOME /root

WORKDIR /root

COPY userfiles /root

# The centos-release-SCL and ruby193 (and thus python27) tips from:
# https://digitalchild.info/centos-6-5-and-ruby1-9-3-via-software-collections/
# Also needed the bits about scl here:
# http://stackoverflow.com/questions/18918588/did-i-install-ruby-1-9-3-correctly-on-rhel

RUN	yum update -y && yum install -y centos-release-SCL && \
	yum groupinstall -y "Development Tools" && \
 	yum install -y wget which git man man-pages yum-utils rpm-build \
 		boost-devel \
 		ruby193 ruby193-ruby-devel augeas-devel libxml2-devel \
 		python27 python27-python-devel \
 		java-1.7.0-openjdk java-1.7.0-openjdk-devel java-1.7.0-openjdk-src && \
 		scl enable ruby193 "ruby -v" && \
		scl enable python27 "python --version"

RUN cd Projects/Groovy && unzip groovy-sdk-2.3.7.zip

RUN cd Projects/Gradle && unzip gradle-2.1-all.zip

CMD [ "/bin/bash", "-login" ]
