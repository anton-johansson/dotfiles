# dotfiles

```shell
$ git clone git@github.com:anton-johansson/dotfiles.git ~/.dotfiles
$ ln -s ~/.dotfiles/zshrc ~/.zshrc
$ ln -s ~/.dotfiles/gitconfig ~/.gitconfig
$ ln -s ~/.dotfiles/nanorc ~/.nanorc
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
