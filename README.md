# dotfiles

This is my dotfiles, yo! 

If you don't know what dotfiles are, you can check this [Github website](http://dotfiles.github.io/).

Fork and modify at your pleasure! 

As there is so much to learn for me in this area, feel free to open issues and contribute your ideas.

## Getting started

As Zsh is awesome, I'm using [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/). You can start by installing it. I also rely a lot on [Homebrew](http://brew.sh/), grab it too!

The 'init.sh' script runs an init script in each directory, starting by replacing zsh files, then install all Homebrew recipes that I like, sets a sensible '.gitconfig' and makes OSX livable. If you don't care for one of these points, feel free to comment the corresponding line in the 'init.sh' file.

## Zsh

I can't work without Zsh. I really think you should try it if you never had. But as many things, it can be difficult to have a sensible configuration. [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/) is really great, and have tons of plugins. My dotfiles add a few aliases and script utilities to it, take a look! I'm used to the 'sorin' theme, but there are many more.

## Brew

Homebrew can install a bunch of things for you, and will take care of the upgrade, uninstall etc... The script 'brew/brew.sh' installs some recipes, feel free to replace by yours.

## Git

I'm kind of a Git hardcore user, so I have a ton of preferences. I've explain most of these in a [blog post](http://hypedrivendev.wordpress.com).

## OSX

These preferences are meant for OSX Lion, but all osx specific stuff are in the 'osx' directory, so you can fremove it if you're running on another OS.

## iTerm2

iTerm2 is a great terminal application. This directory contains my favorite themes (but will not setup them automatically, you've got to import them and chose them).

