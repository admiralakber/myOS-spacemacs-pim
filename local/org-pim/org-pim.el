(provide 'org-pim)

(spacemacs|use-package-add-hook org
  :post-init
  ;; Proper code blocks
  (setq org-src-fontify-natively t)
  (setq org-src-tab-acts-natively t)
  (setq org-src-preserve-indentation t)
  (setq org-src-window-setup 'current-window)
  ;; Babel languages
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((python  . t)
     (shell   . t)
     (latex   . t)
     (C       . t)
     (fortran . t)
     (haskell . t)
     (awk     . t)
     (js      . t)
     (R       . t)
     (octave  . t)
     (matlab  . t)
     (perl    . t)
     (gnuplot . t)
     (latex   . t)
     (emacs-lisp . t)))
  ;; Agenda
  (setq org-log-done t)
  ;; Encoding
  (setq org-export-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
  (set-charset-priority 'unicode)
  (setq default-process-coding-system '(utf-8-unix . utf-8-unix))
  ;; Don't allow editing of folded regions
  (setq org-catch-invisible-edits 'error)
  ;; Start agenda on Monday
  (setq org-agenda-start-on-weekday 1)
  ;; Attachments
  (setq org-id-method (quote uuidgen))
  (setq org-attach-directory "attach/")
  )

(use-package org-crypt
  :config
  (org-crypt-use-before-save-magic)
  (setq org-tags-exclude-from-inheritance (quote ("crypt")))
  (setq org-crypt-key (concat user-full-name " <" user-mail-address ">"))
  )
