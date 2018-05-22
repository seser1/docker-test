#FROM jenkins:1.596
FROM jenkins:2.60.3

USER root
RUN apt-get update && apt-get install -y nkf
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN apt-get update \
      && apt-get install -y libltdl7 \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN nkf -wd --overwrite /usr/share/jenkins/plugins.txt
# plugin.txt's line feed code should be 'LF' if not it whould be error in jenins:2.60.3

RUN sudo apt install -y ruby
RUN sudo apt install -y ruby-bundler

USER jenkins
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
