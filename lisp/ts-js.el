;;; lisp/ts-js.el -*- lexical-binding: t; -*-

;; Formatting
(setq-hook! 'web-mode-hook +format-with-lsp nil)
(setq-hook! 'typescript-mode-hook +format-with-lsp nil)

;; Hooks
(defun ts-js-config ()
  (flycheck-add-next-checker 'lsp 'javascript-eslint))

(add-hook
 'lsp-managed-mode-hook
 (lambda ()
   (when (derived-mode-p 'web-mode)
     (ts-js-config))))

(add-hook! 'typescript-mode-hook 'eslintd-fix-mode)
(add-hook! 'web-mode-hook 'eslintd-fix-mode)

;; Flycheck
(setq! flycheck-javascript-eslint-executable "eslint_d")
