realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

OMGDIR=`realpath ${1}`

docker run -ti \
       --name oh-my-git-bash \
       --rm \
       --env OMGDIR=${OMGDIR} \
       -v ${OMGDIR}:/root/.oh-my-git \
       oh-my-git:latest \
       /bin/bash
