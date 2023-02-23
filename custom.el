(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "c865644bfc16c7a43e847828139b74d1117a6077a845d16e71da38c8413a5aaa" "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443" "1cae4424345f7fe5225724301ef1a793e610ae5a4e23c023076dc334a9eb940a" "991ca4dbb23cab4f45c1463c187ac80de9e6a718edc8640003892a2523cb6259" "683b3fe1689da78a4e64d3ddfce90f2c19eb2d8ab1bab1738a63d8263119c3f4" "545ab1a535c913c9214fe5b883046f02982c508815612234140240c129682a68" "00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "7ea883b13485f175d3075c72fceab701b5bf76b2076f024da50dff4107d0db25" default))
 '(safe-local-variable-values
   '((eval progn
      (defun get-go-version nil
       (shell-command-to-string "go version | cut -d ' ' -f 3 | sed -r 's/go//'"))
      (dap-register-debug-template "Attach to rogue container"
       (list :name "Rogue::Attach" :type "go" :request "attach" :mode "remote" :host "127.0.0.1" :port 42097 :substitutePath
             (vector
              (ht
               ("from"
                (projectile-acquire-root))
               ("to" "/home/dev/app"))
              (ht
               ("from"
                (concat
                 (getenv "HOME")
                 "/.asdf/installs/golang/"
                 (get-go-version)
                 "/packages/pkg/mod"))
               ("to" "/tmp/cache/go/mod/"))
              (ht
               ("from"
                (concat
                 (getenv "HOME")
                 "/.asdf/installs/golang/"
                 (get-go-version)
                 "/go/src"))
               ("to"
                (concat "/home/dev/.asdf/installs/golang/"
                        (get-go-version)
                        "/go/src")))))))
     (eval progn
      (defun get-go-version nil
        (shell-command-to-string "go version | cut -d ' ' -f 3 | sed -r 's/go//'"))
      (dap-register-debug-template "Attach to dev container (Emacs)"
                                   (list :name "Attach to dev container (Emacs)" :type "go" :request "attach" :mode "remote" :host "127.0.0.1" :port 42097 :substitutePath
                                         (vector
                                          (ht
                                           ("from"
                                            (projectile-acquire-root))
                                           ("to" "/home/dev/app"))
                                          (ht
                                           ("from"
                                            (concat
                                             (getenv "HOME")
                                             "/.asdf/installs/golang/"
                                             (get-go-version)
                                             "/packages/pkg/mod"))
                                           ("to" "/tmp/cache/go/mod/"))
                                          (ht
                                           ("from"
                                            (concat
                                             (getenv "HOME")
                                             "/.asdf/installs/golang/"
                                             (get-go-version)
                                             "/go/src"))
                                           ("to"
                                            (concat "/home/dev/.asdf/installs/golang/"
                                                    (get-go-version)
                                                    "/go/src")))))))
     (elisp-lint-indent-specs
      (describe . 1)
      (it . 1)
      (thread-first . 0)
      (cl-flet . 1)
      (cl-flet* . 1)
      (org-element-map . defun)
      (org-roam-dolist-with-progress . 2)
      (org-roam-with-temp-buffer . 1)
      (org-with-point-at . 1)
      (magit-insert-section . defun)
      (magit-section-case . 0)
      (org-roam-with-file . 2))
     (elisp-lint-ignored-validators "byte-compile" "package-lint")
     (eval progn
      (defun get-go-version nil
        (shell-command-to-string "go version | cut -d ' ' -f 3 | sed -r 's/go//'"))
      (dap-register-debug-template "Attach to rogue container"
                                   (list :name "Rogue::Attach" :type "go" :request "attach" :mode "remote" :host "127.0.0.1" :port 42097 :substitutePath
                                         (vector
                                          (ht
                                           ("from"
                                            (projectile-acquire-root))
                                           ("to" "/home/dev/app"))
                                          (ht
                                           ("from"
                                            (concat
                                             (getenv "HOME")
                                             "/.asdf/installs/golang/"
                                             (get-go-version)
                                             "/packages/pkg/mod"))
                                           ("to" "/tmp/cache/go/mod/"))
                                          (ht
                                           ("from"
                                            (concat
                                             (getenv "HOME")
                                             "/.asdf/installs/golang/"
                                             (get-go-version)
                                             "/go/src"))
                                           ("to" "/home/dev/.asdf/installs/golang/1.19.2/go/src"))))))
     (eval progn
      (defun get-go-version nil
        (message "getting go version...")
        (shell-command-to-string "go version | cut -d ' ' -f 3 | sed -r 's/go//'"))
      (dap-register-debug-template "Emacs - Attach to tasktest container"
                                   (list :name "Emacs::Attach" :type "go" :request "attach" :mode "remote" :host "127.0.0.1" :port 42097 :substitutePath
                                         (vector
                                          (ht
                                           ("from"
                                            (projectile-acquire-root))
                                           ("to" "/home/dev/app"))
                                          (ht
                                           ("from"
                                            (concat
                                             (getenv "HOME")
                                             "/.asdf/installs/golang/"
                                             (get-go-version)
                                             "/packages/pkg/mod"))
                                           ("to" "/tmp/cache/go/mod/"))
                                          (ht
                                           ("from"
                                            (concat
                                             (getenv "HOME")
                                             "/.asdf/installs/golang/"
                                             (get-go-version)
                                             "/go/src"))
                                           ("to" "/home/dev/.asdf/installs/golang/1.19.2/go/src"))))))))
 '(warning-suppress-types
   '((lsp-mode)
     (lsp-mode)
     (lsp-mode)
     (lsp-mode)
     (defvaralias))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "#1e1e1e")))))
