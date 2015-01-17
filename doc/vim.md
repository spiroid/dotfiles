# VIM Configuration

Over the last couple of years i started to enjoy working with vim as a development editor.
I find it is both powerful and it also comes with an amazing set of features.

As you may already know vim is heavily custumizable and comes with a huge amount of plugins.
The .vimrc configuration file i'm sharing is opiniated, tweaked with shortcuts and bundle
configuration that i'm used to play with  
Please feel free to adapt it to your own taste :)

## Install

### Dependencies

 * git: `apt-get install git`

### Instructions

Simple as:

    git clone git@github.com:spiroid/dotfiles.git ~/dotfiles
    ln -s ~/.vim ~/dotfiles/.vim
    ln -s ~/.vimrc ~/dotfiles/.vimrc


## How to update to latest version?

Simply just do a git rebase!

    cd ~/.vim_runtime
    git pull --rebase
    

## Included Plugins

I recommend reading the docs of these plugins to understand them better. Each of them provide a much better Vim experience!

* [Vundle](https://github.com/gmarik/Vundle.vim): Manages installation and the runtime path of the plugins
* [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for the Perl module / CLI script 'ack'
* [NERD Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim. Toggle with `F2`
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Buffer Explorer / Browser. This plugin can be opened with `<leader+o>`
* [ctrlp.vim](https://github.com/kien/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. It's mapped to `<leader+f>`
* [mru.vim](https://github.com/vim-scripts/mru.vim): Plugin to manage Most Recently Used (MRU) files. Includes my own fork which adds syntax highlighting to MRU. This plugin can be opened with `<leader+r>`
* [YankRing](https://github.com/vim-scripts/YankRing.vim): Maintains a history of previous yanks, changes and deletes
* [vim-airline](https://github.com/bling/vim-airline): Lean & mean status/tabline for vim that's light as air (replacing powerline)
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal
* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim


## Included color scheme

* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)


## Included modes

    not documented yet

## Key Mappings

### Plugin related mappings

Open [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip) and see and manage the current buffers:
    
    map <leader>o :BufExplorer<cr>

