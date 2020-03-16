# dotfiles

These dotfiles works best when applied on a fresh installation created using [these configuration scripts](https://github.com/anton-johansson/linux-configs).


## Install

```shell
$ git clone git@github.com:zsh-users/antigen.git ~/.zsh/antigen
$ git clone git@github.com:anton-johansson/dotfiles.git ~/.dotfiles

$ ln -s ~/.dotfiles/zshrc ~/.zshrc
$ ln -s ~/.dotfiles/gitconfig ~/.gitconfig
$ ln -s ~/.dotfiles/subversion ~/.subversion
$ ln -s ~/.dotfiles/nanorc ~/.nanorc
$ ln -s ~/.dotfiles/ssh/start.sh ~/.config/autostart-scripts/ssh.sh
$ ln -s ~/.dotfiles/ssh/stop.sh ~/.config/plasma-workspace/shutdown/ssh.sh
$ ln -s ~/.dotfiles/konsole/konsolerc ~/.config/konsolerc
$ ln -s ~/.dotfiles/konsole/anton-johansson.profile ~/.local/share/konsole/anton-johansson.profile
$ ln -s ~/.dotfiles/konsole/Linux.colorscheme ~/.local/share/konsole/Linux.colorscheme
$ ln -s ~/.dotfiles/kde/kdeglobals ~/.config/kdeglobals
$ ln -s ~/.dotfiles/kde/kglobalshortcutsrc ~/.config/kglobalshortcutsrc
$ ln -s ~/.dotfiles/kde/kwinrc ~/.config/kwinrc
$ ln -s ~/.dotfiles/kde/khotkeysrc ~/.config/khotkeysrc
$ ln -s ~/.dotfiles/kde/Breeze.colors ~/.kde/share/apps/color-schemes/Breeze.colors
$ ln -s ~/.dotfiles/kde/plasma_calendar_holiday_regions ~/.config/plasma_calendar_holiday_regions
$ ln -s ~/.dotfiles/kde/plasma-localerc ~/.config/plasma-localerc
$ ln -s ~/.dotfiles/kde/plasma-org.kde.plasma.desktop-appletsrc ~/.config/plasma-org.kde.plasma.desktop-appletsrc

$ wget https://gist.githubusercontent.com/wandernauta/6800547/raw/2c2ad0f3849b1b1cd1116b80718d986f1c1e7966/sp -O ~/.dotfiles/zsh/bin/sp
$ chmod +x ~/.dotfiles/zsh/bin/sp

$ chsh -s $(which zsh)
```


## Export variables

```shell
$ touch ~/.privaterc
$ echo "export WORK_EMAIL=anton.johansson@my-business.com" >> ~/.privaterc
$ echo "export WORK_GIT_HOSTNAME=some-hostname" >> ~/.privaterc
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
