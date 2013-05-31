#!/bin/bash -ex

INSTALLER_REPO=${INSTALLER_REPO:-https://raw.github.com/yudai/cf_nise_installer}
BRANCH=${BRANCH:-master}

for file in local_install.sh clone_cf_release.sh postinstall.sh; do
    wget ${INSTALLER_REPO}/${BRANCH}/scripts/${file} -O ${file}
    chmod u+x ${file}
done

wget ${INSTALLER_REPO}/${BRANCH}/manifests/micro.yml -O micro.yml

./local_install.sh
