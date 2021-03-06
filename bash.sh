set -e
source libs/realpath.sh

usage() {
    echo "usage: `basename $0` oh-my-git_repository_path"
}

OMGDIR=`realpath ${1}`
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    usage
    exit -1
fi

if [ ! -d ${OMGDIR} ]; then
    echo "No directory: ${OMGDIR}"
    usage
    exit -1
fi

docker run -ti \
       --name oh-my-git-bash \
       --rm \
       --env OMGDIR=${OMGDIR} \
       -v ${OMGDIR}:/root/.oh-my-git \
       oh-my-git-bash:latest \
       /bin/bash
