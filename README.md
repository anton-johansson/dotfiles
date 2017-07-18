# dotfiles

```shell
$ git clone https://github.com/zsh-users/antigen.git ~/.zsh/antigen
$ git clone git@github.com:anton-johansson/dotfiles.git ~/.dotfiles
$ ln -s ~/.dotfiles/zshrc ~/.zshrc
$ ln -s ~/.dotfiles/gitconfig ~/.gitconfig
$ ln -s ~/.dotfiles/nanorc ~/.nanorc
$ ln -s ~/.dotfiles/ssh/start.sh ~/.config/autostart-scripts/ssh.sh
$ ln -s ~/.dotfiles/ssh/stop.sh ~/.config/plasma-workspace/shutdown/ssh.sh
$ ln -s ~/.dotfiles/konsole/konsolerc ~/.config/konsolerc
$ ln -s ~/.dotfiles/konsole/anton-johansson.profile ~/.local/share/konsole/anton-johansson.profile
$ ln -s ~/.dotfiles/konsole/Linux.colorscheme ~/.local/share/konsole/Linux.colorscheme
```


## Export variables

```shell
$ touch ~/.privaterc
$ echo "export WORK_EMAIL=anton.johansson@my-business.com" >> ~/.privaterc
$ echo "export WORK_GIT_HOSTNAME=some-hostname" >> ~/.privaterc
```


## Link root

```shell
$ sudo ln -s $HOME/.zshrc /root/.zshrc
$ sudo ln -s $HOME/.dotfiles /root/.dotfiles
$ sudo ln -s $HOME/.privaterc /root/.privaterc
$ sudo ln -s $HOME/.nanorc /root/.nanorc
```
