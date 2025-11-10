;; custom file for custom-set-variable
(setq custom-file "~/.awok-emacs/.emacs-customvar.el")
(load custom-file) ; changing default custom-set-variable to another file

;; set iosevka font
;; (add-to-list 'default-frame-alist '(font . "iosevka Curly Slab-12"))

;; set indentation
(setq-default indent-tabs-mode nil) ; indentation using space
(setq-default tab-width 4) ; ukuran 4 spasi
(setq-default standard-indent 4) ; default offset
(setq c-basic-offset 4) ; default indentation of c/c++ language
(setq python-indent-offset 4) ; default indentation of python language

;; key binding
(setq grep-command "grep -rn ")
(global-set-key (kbd "C-c o") 'grep) ; grep for searching definition

;; customizing some utility
(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode t)
(setq dired-kill-when-opening-new-dired-buffer t)

;; package configuration
(load-file "~/.awok-emacs/.emacs-packages.el")
