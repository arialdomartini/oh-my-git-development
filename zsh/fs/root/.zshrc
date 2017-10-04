echo "Welcome in oh-my-git DevKit for Zsh"
echo "Currently running oppa-lana-style from: ${OMGTHEMEDIR}"
echo "Hit CTRL-D to exit."
echo -n

source .antigen/antigen.zsh

echo -n "\n"
echo -n "How do you want to autoload oh-my-git?\n\n"
echo -n "(1) Via Antigen\n\n"
echo -n "(2) Via scripts\n\n"
echo -n "(3) Do not load.\n\n"

vared -p 'Make you choice: ' -c AUTOLOAD
case $AUTOLOAD in
    1) source ./install-with-antigen.zsh
       ;;
    2) source ./load-with-scripts.zsh
       ;;
    3)
        echo -n "\nFeel free to load oh-my-git either running its scripts, with:\n"
        echo " source ../load-with-scripts.zsh"
        echo -n "or via Antigen with:\n"
        echo " source ../install-with-antigen.zsh"
        echo -n "\n\n"
        ;;
    *)
        echo \"${AUTOLOAD}\": invalid choice
        exit -1
        ;;
esac

cd .oh-my-git-themes
