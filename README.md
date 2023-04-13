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

$ chsh -s $(which zsh)
```


## Export variables

```shell
$ touch ~/.privaterc
$ echo "export WORK_EMAIL=anton.johansson@my-business.com" >> ~/.privaterc
$ echo "export WORK_GIT_HOSTNAME=some-hostname" >> ~/.privaterc
$ echo "export WORK_GIT_SIGNING_KEY=some-key" >> ~/.privaterc
```


## GPG keys

I have two keys that needs to be renewed around 1st of April each year:

Personal: `16E82FC3BA121625` \
Work: `A1D2C0AB770D90D7`

I use these for signing all my Git commits and for signing Maven artifacts.

### Renewing keys

```shell
$ gpg --edit-key [key name]
gpg> expire
Changing expiration time for the primary key.
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 12m
Is this correct? (y/N) y
gpg> save
```

## Templates

See [the additional templates](./templates/).


## License

Apache License © [Anton Johansson](https://github.com/anton-johansson)
