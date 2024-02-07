;;; lisp/flycheck.el -*- lexical-binding: t; -*-

(add-hook! 'go-mode-hook 'flycheck-golangci-lint-setup)
