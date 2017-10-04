set -e
source libs/realpath.sh

usage() {
    echo "usage: `basename $0` oh-my-git_repository_path oh-my-git-themes_repository_path"
}

OMGDIR=`realpath ${1}`
OMGTHEMEDIR=`realpath ${2}`

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    usage
    exit -1
fi

if [ ! -d ${OMGTHEMEDIR} ]; then
    echo "No directory: ${OMGTHEMEDIR}"
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
       --env OMGTHEMEDIR=${OMGTHEMEDIR} \
       -v ${OMGDIR}:/root/.oh-my-git \
       -v ${OMGTHEMEDIR}:/root/.oh-my-git-themes \
       oh-my-git-zsh:latest \
       /bin/zsh
