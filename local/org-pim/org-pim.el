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

(use-package org-journal
  :ensure t
  :init
  ;; global spacemacs
  (spacemacs/declare-prefix "aj" "journal")
  (spacemacs/set-leader-keys "ajj" 'org-journal-new-entry)
  (spacemacs/set-leader-keys "ajs" 'org-journal-search)
  ;; journal major
  (spacemacs/set-leader-keys-for-major-mode 'org-journal-mode "jn" 'org-journal-open-next-entry)
  (spacemacs/set-leader-keys-for-major-mode 'org-journal-mode "jp" 'org-journal-open-previous-entry)
  (spacemacs/set-leader-keys-for-major-mode 'org-journal-mode "jj" 'org-journal-new-entry)
  (spacemacs/set-leader-keys-for-major-mode 'org-journal-mode "js" 'org-journal-search)
  ;; calendar
  (define-key calendar-mode-map "Jj" 'org-journal-new-date-entry)
  (define-key calendar-mode-map "Jv" 'org-journal-read-entry)
  (define-key calendar-mode-map "JV" 'org-journal-display-entry)
  (define-key calendar-mode-map "Jn" 'org-journal-next-entry)
  (define-key calendar-mode-map "Jp" 'org-journal-previous-entry)
  (define-key calendar-mode-map "JS" 'org-journal-search-forever)
  (define-key calendar-mode-map "Jw" 'org-journal-search-calendar-week)
  (define-key calendar-mode-map "Jm" 'org-journal-search-calendar-month)
  (define-key calendar-mode-map "Jy" 'org-journal-search-calendar-year)
  )
