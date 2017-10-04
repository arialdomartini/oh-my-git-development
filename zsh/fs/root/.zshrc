echo "Welcome in oh-my-git DevKit for Zsh"
echo "Currently running oppa-lana-style from: ${OMGTHEMEDIR}"
echo "Hit CTRL-D to exit."
echo -n

setopt prompt_subst
source .oh-my-git-themes/spectrum.zsh
source .oh-my-git/base.sh
source .oh-my-git-themes/oppa-lana-style.zsh-theme

cd .oh-my-git-themes
