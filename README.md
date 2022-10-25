# AstroNvim User Configuration

My personal user config for AstroVim

## Installation

- Install AstroNvim

Linux

```sh
git clone https://github.com/AstroNvim/AstroNvim.git ~/.config/nvim
```

Windows

```sh
git clone https://github.com/AstroNvim/AstroNvim $env:LOCALAPPDATA\nvim
```

---

- Install these user settings

Linux

```sh
git clone git@github.com:jvegaf/astronvim_user.git ~/.config/nvim/lua/user
```

Windows

```sh
git clone git@github.com:jvegaf/astronvim_user.git $env:LOCALAPPDATA\nvim\lua\user

```

---

- Initialize AstroVim

```sh
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
