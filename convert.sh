#!/bin/bash

k=0
for i in $(cat sizes)
do
    k=$(expr $k + 1)
    for j in $(ls -A splatter-fedora/ | grep "splatter_5" | sort -g)
    do
        convert splatter-fedora/$j -resize $i splatter-fedora/$(echo splatter_$(echo $k)_$(echo $j | cut -c12-))
    done
done
