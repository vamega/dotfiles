# zmodload zsh/zprof

export ZGEN_AUTOLOAD_COMPINIT=false
# unset ZGEN_AUTOLOAD_COMPINIT

# Load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    export ZGEN_PREZTO_LOAD_DEFAULT=0
    echo "Creating a zgen save"

    zgen prezto

    # prezto options
    # Set theme
    zgen prezto prompt theme 'agnoster'

    # Vim keybindings
    # zgen prezto editor key-bindings 'vi'

    # Options for syntax highlighting
    zgen prezto 'syntax-highlighting' color yes
    zgen prezto 'syntax-highlighting' highlighters \
           'main' \
           'brackets' \
           'pattern' \
           'line' \
           'cursor' \
           'root'

    zgen prezto 'autosuggestions' color 'yes'
    # Information about format can be found here:
    # man zshzle
    # Online version:
    # http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Character-Highlighting
    zgen prezto 'autosuggestions:color' found 'fg=8'

    # zgen prezto 'history-substring-search' color 'yes'
    # zgen prezto 'history-substring-search:color' found 'green'
    # zgen prezto 'history-substring-search:color' not-found 'red'

    # plugins
    zgen prezto environment
    zgen prezto terminal
    zgen prezto editor
    zgen prezto history
    zgen prezto directory
    zgen prezto spectrum
    zgen prezto utility
    zgen prezto git  # Adds 20ms to init time
    zgen prezto docker
    zgen prezto completion

    source "${HOME}/.zgen/platform_extensions.zsh"

    zgen prezto syntax-highlighting
    # zgen prezto history-substring-search
    zgen prezto autosuggestions
    zgen prezto prompt

    # save all to init script
    zgen save
fi

# zprof
