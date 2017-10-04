oh-my-git DevKit
================


This repo contains 2 Docker images that can be used to test oh-my-git both on Bash and zsh in a sandboxed environment.

Build
=====

Clone oh-my-git from [its repository](https://github.com/arialdomartini/oh-my-git) or from your fork in some directory:

```
git clone git@github.com:arialdomartini/oh-my-git.git omg_somedirectory
```

Then run:

```
./build.sh omg_directory
```

It will produce the Docker image `oh-my-git:latest`, comprising Bash and zsh, with oh-my-git enabled and configured for the root account.

Run
===

Run:

```
./bash.sh
```

to get a Bash with oh-my-git. For example

```
cd
git clone git@github.com:arialdomartini/oh-my-git.git
git clone git@github.com:arialdomartini/oh-my-git-devkit.git
cd oh-my-git-devkit
./build.sh

./bash.sh ../oh-my-git
```

Run:

```
./zsh.sh
```

to get a zsh environment. For example:

```
cd
git clone git@github.com:arialdomartini/oh-my-git.git
git clone git@github.com:arialdomartini/oh-my-git-themese.git
git clone git@github.com:arialdomartini/oh-my-git-devkit.git
cd oh-my-git-devkit
./build.sh

./zsh.sh ../oh-my-git ../oh-my-git-themes
```


Note that the font must be configured in the host. Follow instruction on oh-my-git's [readme](https://github.com/arialdomartini/oh-my-git#the-font)
