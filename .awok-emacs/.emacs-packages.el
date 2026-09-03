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

;; eksekusi .bashrc .zshrc .shrc
(use-package exec-path-from-shell
  :config
  (setq exec-path-from-shell-arguments '("-c"))
  (setq exec-path-from-shell-variables '("PATH"))
  (exec-path-from-shell-initialize))

;; ivy setup
(use-package ivy
  :init
  (ivy-mode 1)
  (setq ivy-ignore-buffers '("^\\*"))
  (setq ivy-count-format "(%d/%d) "))

;; magit setup
(use-package magit)

;; flycheck setup
(use-package flycheck)

;; yasnippet setup
(use-package yasnippet
  :init
  (yas-global-mode t))

(use-package yasnippet-snippets
  :after yasnippet)

;; LSP-mode
(load-file "~/.awok-emacs/.emacs-lsp.el")

;; completation anything
(use-package company
  :after (lsp-mode)

  :init
  (global-company-mode)
  
  :config
  (setq company-backends '((company-capf company-dabbrev company-yasnippet))))

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
