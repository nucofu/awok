;; setup repository
(require 'package)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; setup gruber-darker as main theme
(unless (package-installed-p 'gruber-darker-theme) (package-install 'gruber-darker-theme))
(load-theme 'gruber-darker t)

;; ensuring that use-package already installed & use-package is always ensure t
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; ivy setup
(use-package ivy
  :init
  (ivy-mode 1)
  (setq ivy-count-format "(%d/%d) "))

;; magit setup
(use-package magit)

;; pyvenv
(use-package pyvenv
  :init
  (pyvenv-activate "/home/tutu/.config/lvenv/") ; lvenv is acronym of "local virtual environtment"

  :bind ("s-v" . pyvenv-mode))

;; flycheck setup
(use-package flycheck)

;; lsp-mode setup
(setq lsp-keymap-prefix "s-l")
(use-package lsp-mode
  :hook ((c-mode c++-mode python-mode php-mode) . lsp-deferred)
  :commands lsp
  
  :init
  (setq lsp-idle-delay 0.7)
  (setq lsp-enable-indentation nil)
  (setq lsp-enable-on-type-formatting nil)
  (setq lsp-keep-workspace-alive nil)
  (setq lsp-completion-provider :capf)
  (setq lsp-diagnostics-provider :flycheck)
  
  :config
  (setq lsp-clients-clangd-executable "/usr/bin/clangd")
  (setq lsp-pylsp-server-command '("pylsp")
        lsp-pylsp-plugins-pylint-enabled t
        lsp-pylsp-plugins-pycodestyle-enabled t))

(global-set-key (kbd "s-c l") #'lsp)

(use-package lsp-ivy
  :after (lsp-mode ivy))

;; completation anything
(use-package company
  :after (lsp-mode)

  :init
  (global-company-mode)
  (define-key company-mode-map (kbd "<tab>") 'company-indent-or-complete-common)

  :config
  (setq company-backends '(company-capf company-dabbrev)))

;; for multiple cursors purpose
(use-package multiple-cursors
  :bind (("C-c m" . mc/edit-lines)
         ("C-c C-m" . mc/mark-all-like-this))
         ("s->" . mc/mark-next-like-this)
         ("s-<" . mc/mark-previous-like-this)
         ("s-<next>" . mc/skip-to-next-like-this)
         ("s-<prior>" . mc/skip-to-previous-like-this)
         ("C-s->" . mc/unmark-previous-like-this)
         ("C-s-<" . mc/unmark-next-like-this))
