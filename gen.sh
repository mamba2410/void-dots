#!/bin/bash

install_dir=$(pwd)
new_dir="$HOME/user/$(basename $install_dir)"

./makedirs
cd ..
echo "Moving repo to $new_dir"
mv "$install_dir" "$new_dir"
cd "$new_dir"
./linkfiles

