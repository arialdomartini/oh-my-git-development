set -e
source realpath.sh

usage() {
    echo "usage: `basename $0` oh-my-git_repository_path"
}

OMGDIR=`realpath ${1}`
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    usage
    exit -1
fi

docker run -ti \
       --name oh-my-git-bash \
       --rm \
       --env OMGDIR=${OMGDIR} \
       -v ${OMGDIR}:/root/.oh-my-git \
       oh-my-git:latest \
       /bin/bash
