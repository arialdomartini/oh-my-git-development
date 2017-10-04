echo "Welcome in oh-my-git DevKit for Zsh"
echo "Currently running oppa-lana-style from: ${OMGTHEMEDIR}"
echo "Hit CTRL-D to exit."
echo -n

source .antigen/antigen.zsh

load_omg() {
    setopt prompt_subst
    source .oh-my-git-themes/spectrum.zsh
    source .oh-my-git/base.sh
    source .oh-my-git-themes/oppa-lana-style.zsh-theme
}

read -q "AUTOLOAD?Load oh-my-git sourcing its scripts? "

if [[ ${AUTOLOAD} == "y" ]]; then
    load_omg
else
    echo -n "\nFeel free to load oh-my-git either via its scripts or via Antigen\n"
fi

cd .oh-my-git-themes
