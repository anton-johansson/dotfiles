# dotfiles

```shell
$ git clone git@github.com:anton-johansson/dotfiles.git ~/.dotfiles
$ ln -s ~/.dotfiles/zshrc ~/.zshrc
$ ln -s ~/.dotfiles/gitconfig ~/.gitconfig
```


## Export variables

```shell
$ touch ~/.privaterc
$ echo "export WORK_EMAIL=anton.johansson@my-business.com" >> ~/.privaterc
$ echo "export WORK_GIT_HOSTNAME=some-hostname" >> ~/.privaterc
```
