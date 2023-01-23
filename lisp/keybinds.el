;;; lisp/keybinds.el -*- lexical-binding: t; -*-

(map! :leader
      ;; prefix: code
      (:prefix-map ("c" . "code")
       :desc "Pop from definition" "p" (cmd!! #'xref-pop-marker-stack))
      ;; prefix: git
      (:prefix-map ("g" . "git")
       (:when (featurep! :tools magit)
        :desc "Git diff file" "d" #'magit-diff-buffer-file)))

;; Scroll up 1/2 page, then center the cursor
(defun +my/evil-scroll-up ()
  (interactive)
  (evil-scroll-up nil)
  (evil-scroll-line-to-center nil))

;; Scroll down 1/2 page, then center the cursor
(defun +my/evil-scroll-down ()
  (interactive)
  (evil-scroll-down nil)
  (evil-scroll-line-to-center nil))

;; Remap `C-u' and `C-d'
(map!
 (:map evil-motion-state-map
       "C-u" #'+my/evil-scroll-up
       "C-d" #'+my/evil-scroll-down ))
