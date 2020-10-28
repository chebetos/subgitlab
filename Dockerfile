FROM gitlab/gitlab-ee:13.5.1-ee.0

ADD custom-run.sh /usr/local/bin/
RUN apt-get update && apt-get install -y openjdk-8-jre-headless subversion && \
    wget https://subgit.com/files/subgit_3.3.10_all.deb -O /opt/subgit_3.3.10_all.deb && \
    dpkg -i /opt/subgit_3.3.10_all.deb && \ 
    rm /opt/subgit_3.3.10_all.deb

CMD ["/usr/local/bin/custom-run.sh"]

