#!/bin/bash


if [[ -z $(grep "ORIGINAL" watched.html) ]]; then
    # watch.html was copied from revised.hml
    echo "Copying original.html into place."
    cp original.html watched.html
else
    # watch.html was copied from original.html
    echo "Copying revised.html into place."
    cp revised.html watched.html
fi

git add watched.html
git commit -m "Toggle."
git push

