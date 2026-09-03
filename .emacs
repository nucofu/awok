;; custom file for custom-set-variable
(setq custom-file "~/.awok-emacs/.emacs-customvar.el")
(when (file-exists-p custom-file)
  (load custom-file)) ; changing default custom-set-variable to another file

;; set iosevka font
(add-to-list 'default-frame-alist '(font . "Iosevka Nerd Font-10"))

;; set indentation
(setq-default indent-tabs-mode nil) ; indentation using space
(setq-default tab-width 4) ; ukuran 4 spasi
(setq-default standard-indent 4) ; default offset

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
(setq make-backup-files nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil) 

;; package configuration
(load-file "~/.awok-emacs/.emacs-packages.el")
