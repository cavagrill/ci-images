FROM alpine

RUN apk --no-cache update \
  && apk --no-cache add ca-certificates \
  && apk --no-cache add --virtual build-dependencies curl \
  && DOCKER_VERSION=$(curl -fLSs --retry 3 https://download.docker.com/linux/static/stable/x86_64/ | grep -o -e 'docker-[.0-9]*-ce\.tgz' | sort -r | head -n 1) \
  && DOCKER_URL="https://download.docker.com/linux/static/stable/x86_64/${DOCKER_VERSION}" \
  && curl -fLSs -o /tmp/docker.tgz --retry 3 "${DOCKER_URL}" \
  && tar -xz -C /tmp -f /tmp/docker.tgz \
  && mv /tmp/docker/* /usr/local/bin \
  && rm -rf /tmp/docker /tmp/docker.tgz \
  && KUBECTL_VERSION=$(curl -fLSs --retry 3 https://storage.googleapis.com/kubernetes-release/release/stable.txt) \
  && curl -fLOSs --retry 3 https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
  && mv kubectl /usr/local/bin/kubectl \
  && KOPS_VERSION=$(curl -fLSs --retry 3 https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4) \
  && curl -fLOSs --retry 3 https://github.com/kubernetes/kops/releases/download/${KOPS_VERSION}/kops-linux-amd64 \
  && mv kops-linux-amd64 /usr/local/bin/kops \
  && chmod +x /usr/local/bin/kubectl /usr/local/bin/kops \
  && apk del --purge build-dependencies
