;;; lisp/lsp.el -*- lexical-binding: t; -*-

(add-hook
 'lsp-managed-mode-hook
 (lambda ()
   (when (derived-mode-p 'go-mode)
     (flycheck-add-next-checker 'lsp 'golangci-lint))))
