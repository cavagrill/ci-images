FROM alpine:latest

RUN apk --no-cache update \
  && apk --no-cache add ca-certificates \
  && apk --no-cache add --virtual build-dependencies curl \
  && export KUBECTL_VERSION=$(curl -s --retry 3 https://storage.googleapis.com/kubernetes-release/release/stable.txt) \
  && curl -LO --silent --show-error --retry 3 https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
  && mv kubectl /usr/local/bin/kubectl \
  && export KOPS_VERSION=$(curl -s --retry 3 https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4) \
  && curl -LO --silent --show-error --retry 3 https://github.com/kubernetes/kops/releases/download/${KOPS_VERSION}/kops-linux-amd64 \
  && mv kops-linux-amd64 /usr/local/bin/kops \
  && chmod +x /usr/local/bin/kubectl /usr/local/bin/kops \
  && apk del --purge build-dependencies
