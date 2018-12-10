FROM lorands/docker-concourse-ibmcloud-tools

RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx && \
    mv cf /usr/local/bin

RUN cf add-plugin-repo CF-Community https://plugins.cloudfoundry.org
RUN cf install-plugin -f blue-green-deploy -r CF-Community
RUN cf install-plugin -f autopilot -r CF-Community
