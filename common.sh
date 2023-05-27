#!/bin/sh

# installing kubectl plugins
if command -v kubectl; then

    set -x
    cd "$(mktemp -d)" &&
        OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
        ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
        KREW="krew-${OS}_${ARCH}" &&
        curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
        tar zxvf "${KREW}.tar.gz" &&
        ./"${KREW}" install krew

    echo 'export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"' >>$HOME/.zshrc
    . $HOME/.zshrc

    # installing plugins
    kubectl krew install preflight
    kubectl krew install support-bundle

    echo "====>>> Install sbctl tool manually from https://github.com/replicatedhq/sbctl"
fi

# helm plugin
if command -v helm; then
    helm plugin install https://github.com/helm-unittest/helm-unittest --version 0.2.8
fi
