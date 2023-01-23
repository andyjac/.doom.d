;;; custom/jira/jira.el -*- lexical-binding: t; -*-

;; 1. connect to jira
;; (defun connect-to-jira ()
;;   (auth-source-))

(funcall (plist-get (car (auth-source-search :host "outreach-io.atlassian.net" :max 1)) :secret))
