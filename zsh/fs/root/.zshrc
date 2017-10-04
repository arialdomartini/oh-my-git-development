echo "Welcome in oh-my-git DevKit for Zsh"
echo "Currently running oppa-lana-style from: ${OMGTHEMEDIR}"
echo "Hit CTRL-D to exit."
echo -n

source .antigen/antigen.zsh

echo -n "\n"
read -q "AUTOLOAD?Load oh-my-git sourcing its scripts? "

if [[ ${AUTOLOAD} == "y" ]]; then
    source ~/.load-via-scripts.zsh
else
    echo -n "Feel free to load oh-my-git either running its scripts, with:\n"
    echo " source ../load-with-scripts.zsh"
    echo -n "or via Antigen with:\n"
    echo " source ../install-with-antigen.zsh"
    echo -n "\n\n"
fi

cd .oh-my-git-themes
