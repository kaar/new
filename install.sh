#!/bin/bash
# TODO:
# - Add path to Template root directory 
# - Add load completion.bash
# - Set $NEW_TEMPLATES env in some way.

ln -sf "$PWD/src/new" "$HOME/.local/bin/new"
ln -sf "$PWD/src/completion.bash" "$HOME/.config/bash_completion.d/new"
