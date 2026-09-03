### Changelog
- adding exec-path-from-shell
- adding yasnippet and yasnippet-snippet
- adding company-yasnippet
- removing some keybind
- removing default indentation for c and python
- seperating lsp configuration into a diffrent file
- fixing customvar load error
- fixing <TAB> conflict from company and magit

### Instalation

Clangd and Pylsp

**Debian**
```
sudo apt install clangd-19 python3 python3-pylsp python3-pylint-common
```

**Void**
```
sudo xbps-install clang-19 clang-tools-extra19 python3 python3-pylint python3-lsp-server
```

*clone this code, move it into $HOME directory without "README.md" and ".git"

### Keybind

- **C-c o** = shortcut opening "grep -rn"

#### Multiple Cursor
- **C-c m**       = mc/edit-lines
- **C-c C-m**     = mc/mark-all-like-this
- **s\-\>**        = mc/mark-next-like-this
- **s-<**        = mc-mark-previous-like-this
- **s-\<next\>**  = mc/skip-to-next-like-this
- **s-\<prior\>** = mc-skip-to-previous-like-this
- **C-s\-\>**      = mc-unmark-previous-like-this
- **C-s-<**      = mc/unmark-next-like-this
