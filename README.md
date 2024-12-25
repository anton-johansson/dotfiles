# dotfiles

These dotfiles works best when applied on a fresh installation created using [these configuration scripts](https://github.com/anton-johansson/linux-configs).


## Install

```shell
$ git clone git@github.com:anton-johansson/dotfiles.git ~/.dotfiles
$ git clone git@github.com:ohmyzsh/ohmyzsh.git ~/.dotfiles/zsh/oh-my-zsh
$ git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.dotfiles/zsh/oh-my-zsh/custom/plugins/zsh-syntax-highlighting
$ git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.dotfiles/zsh/oh-my-zsh/custom/plugins/zsh-autosuggestions
$ git clone --depth=1 git@github.com:spaceship-prompt/spaceship-prompt.git ~/.dotfiles/zsh/spaceship
$ ln -s ~/.dotfiles/zsh/spaceship/spaceship.zsh-theme ~/.dotfiles/zsh/oh-my-zsh/custom/themes/spaceship.zsh-theme

$ ln -s ~/.dotfiles/zshrc ~/.zshrc
$ ln -s ~/.dotfiles/gitconfig ~/.gitconfig
$ ln -s ~/.dotfiles/subversion ~/.subversion
$ ln -s ~/.dotfiles/nanorc ~/.nanorc

$ mkdir ~/.zsh

$ chsh -s $(which zsh)
```


## Export variables

```shell
$ touch ~/.privaterc
$ echo "export WORK_EMAIL=anton.johansson@my-business.com" >> ~/.privaterc
$ echo "export WORK_GIT_HOSTNAME=some-hostname" >> ~/.privaterc
```


## Templates

See [the additional templates](./templates/).


## License

Apache License © [Anton Johansson](https://github.com/anton-johansson)
