#!/bin/bash

rm ~/.Xresources
cp .Xresources ~/
rm ~/.xinitrc
cp .xinitrc ~/
xrdb ~/.Xresources
