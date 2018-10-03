FROM lorands/docker-concourse-ibmcloud-tools

RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx && \
    mv cf /usr/local/bin
