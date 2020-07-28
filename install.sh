#!/usr/bin/env sh

function put_dotfile {
    if [ -z "$2" ]; then
        target="$1"
    else
        target="$2"
    fi
    source="$(pwd)/$1"
    ln -fs $source ~/$target
}

# lisp impls - just symlink init.lisp to all of them
for lisp_dotfile in .sbclrc ccl-init.lisp .clinit.cl; do
    put_dotfile init.lisp $lisp_dotfile
done

# misc - put in place by name
for misc_dotfile in .zshrc .slynk.lisp; do
    put_dotfile $misc_dotfile
done
