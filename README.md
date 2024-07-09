move this config to your machine:
```
cd ~/.config && git clone git@github.com:Alino/nvim.git
```

Install packer with
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

some files need to be sourced with ```:so``` inside nvim

install Packer inside nvim with ```:PackerInstall```

working on nvim version 0.9.5

inspired by https://www.youtube.com/watch?v=w7i4amO_zaE


------

typescript support with coc
```:CocInstall coc-tsserver```
https://github.com/neoclide/coc-tsserver


------

move karabiner and iterm2 configs
```
cp karabiner/* ~/.config/karabiner
cp iterm2/* ~/.config/iterm2
```
