;; lsp-mode setup

(dolist (mode-list '(cc-mode python-mode))
  (unless (package-installed-p mode-list) (package-install mode-list)))

(use-package lsp-mode
  :hook ((c-mode c++-mode python-mode) . lsp-deferred)
  :commands lsp

  :init
  (setq lsp-idle-delay 0.7)
  (setq lsp-enable-indentation nil)
  (setq lsp-enable-on-type-formatting nil)
  (setq lsp-keep-workspace-alive nil)
  (setq lsp-completion-provider :capf)
  (setq lsp-diagnostics-provider :flycheck)

  :config
  (setq lsp-clients-clangd-executable "clangd")
  (setq lsp-pylsp-plugins-pylint-enabled t
        lsp-pylsp-plugins-pycodestyle-enabled t))

(use-package lsp-ivy
  :after (lsp-mode ivy))
