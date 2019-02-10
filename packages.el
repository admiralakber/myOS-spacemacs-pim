(defconst pim-packages
  '(
    ;; in
    (notmuch :location elpa)
    (notmuch-pim :location local)
    ;; create
    (org-pim :location local)
    (org-journal :location (recipe
                            :fetcher github
                            :repo "bastibe/org-journal"))
    (journal-pim :location local)
    ;; out
    (org-octopress :location elpa)
    (octopress-pim :location local)
    ))

(defun pim/init-notmuch ()
  (use-package notmuch
    ))

(defun pim/init-notmuch-pim()
  (use-package notmuch-pim
    :after notmuch
    :config
    (setq notmuch-show-logo nil)
    ))

(defun pim/init-org-pim ()
  (use-package org-pim
    :after org
    :config
    (setq auto-save-default nil)
    ))

(defun pim/init-org-octopress()
  (use-package org-octopress
    ))

(defun pim/init-octopress-pim()
  (use-package octopress-pim
    ))

(defun pim/init-org-journal()
  (use-package org-journal
    ))

(defun pim/init-journal-pim()
  (use-package journal-pim
    ))
