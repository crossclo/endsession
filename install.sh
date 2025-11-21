#!/bin/sh

nix profile install nixpkgs#sl
nix profile install nixpkgs#espeak
nix profile install nixpkgs#pulseaudioFull
nix profile install nixpkgs#asciiquarium
dot_list="bashrc config emacs gitconfig gitignore mozilla signature ssh thunderbird vim vimrc Xdefaults"

for f in $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
done
