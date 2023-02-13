;;; lisp/org.el -*- lexical-binding: t; -*-

(defun org-roam-node-insert-immediate (arg &rest args)
  (interactive "P")
  (let ((args (cons arg args))
        (org-roam-capture-templates (list (append (car org-roam-capture-templates)
                                                  '(:immediate-finish t)))))
    (apply #'org-roam-node-insert args)))

;; Set the org-roam directory
(setq! org-roam-directory "~/roam")

;; Override the icons that `org-fancy-priorities' sets because they are different widths
;; and cause horizontal alignment issues when you have multiple TODOs at the same level.
(setq! org-fancy-priorities-list '("P0" "P1" "P2"))

;; add the `org-habit' module
(add-to-list 'org-modules 'org-habit)

;; add `habits.org' to `org-agenda-files'
(add-to-list 'org-agenda-files "~/roam/daily/habits.org")

;; Setup templates
(setq! org-roam-capture-templates
       '(("d" "default" plain
          (file "~/roam/templates/default.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 🗒 ${title}\n#+date: %U\n")
          :unnarrowed t)
         ("p" "project" plain
          (file "~/roam/templates/project.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 🚀 ${title}\n#+date: %U\n#+filetags: Project\n")
          :unnarrowed t)
         ("b" "bug" plain
          (file "~/roam/templates/bug.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 🐛 ${title}\n#+date: %U\n#+filetags: Bug\n")
          :unnarrowed t)
         ("h" "how to" plain
          (file "~/roam/templates/how-to.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 📘 ${title}\n#+date: %U\n#+filetags: How-To\n")
          :unnarrowed t)
         ("e" "explanation" plain
          (file "~/roam/templates/explanation.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 📗 ${title}\n#+date: %U\n#+filetags: Explanation\n")
          :unnarrowed t)
         ("r" "reference" plain
          (file "~/roam/templates/reference.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 📕 ${title}\n#+date: %U\n#+filetags: Reference\n")
          :unnarrowed t)
         ("t" "tutorial" plain
          (file "~/roam/templates/tutorial.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 📙 ${title}\n#+date: %U\n#+filetags: Tutorial\n")
          :unnarrowed t)
         ("s" "story" plain
          (file "~/roam/templates/story.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 🚢 ${title}\n#+date: %U\n#+filetags: Story\n")
          :unnarrowed t)
         ("m" "meeting" plain
          (file "~/roam/templates/meeting.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 📅 ${title} @ %^U\n#+date: %U\n#+filetags: Meeting\n")
          :unnarrowed t)
         ("P" "presentation" plain
          (file "~/roam/templates/presentation.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 🎤 ${title} @ %^U\n#+date: %U\n#+filetags: Meeting\n")
          :unnarrowed t)
         ("1" "1:1" plain
          (file "~/roam/templates/meeting.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 📅 ${title} @ %^U\n#+date: %U\n#+filetags: :Meeting:1<>1:\n")
          :unnarrowed t)
        ("l" "person" plain
          (file "~/roam/templates/person.org")
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: 😀 ${title}\n#+date: %U\n#+filetags\n: Person\n")
          :unnarrowed t)))

;; Keybinds
(map!
 :leader
 (:prefix "n"
          (:prefix "r"
           :desc "Insert node (immediate)" "I" #'org-roam-node-insert-immediate)))

(map!
 :map org-mode-map
  :prefix "C-c"
  "i" #'org-roam-node-insert-immediate)
