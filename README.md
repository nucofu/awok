### Changelog
- switch from flymake to flycheck
- integrating pylint with lsp
- installing pyvenv
- adding some config to company-mode
- adding new keybind to multiple-cursors

### Instalation

install this package

**Debian**
```
sudo apt install clangd-19 python3 python3-pylsp python3-pylint-common
```

**Void**
```
sudo xbps-install clang-19 clang-tools-extra19 python3 python3-pylint python3-lsp-server
```

clone this code into your home
```
git clone https://github.com/WeZekdos1/awok.git
```
you can remove README.md after that

### Keybind

- **C-c o** = shortcut opening "grep -rn"
- **s-l**   = lsp-keymap-prefix
- **s-c l** = lsp
- **s-v**   = pyvenv-mode

#### Multiple Cursor
- **C-c m**       = mc/edit-lines
- **C-c C-m**     = mc/mark-all-like-this
- **s\-\>**        = mc/mark-next-like-this
- **s-<**        = mc-mark-previous-like-this
- **C-s-<**      = mc/unmark-next-like-this
- **C-s\-\>**      = mc-unmark-previous-like-this
- **s-\<next\>**  = mc/skip-to-next-like-this
- **s-\<prior\>** = mc-skip-to-previous-like-this
