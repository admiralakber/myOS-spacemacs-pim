(provide 'octopress-pim)

;;; Generate directory structure
(setq org-octopress-directory-org-top org-octopress-directory-top)
;; org files go in here
(setq org-octopress-directory-org-posts (concat org-octopress-directory-top "/blog"))
;; html files output here
(setq org-octopress-directory-posts (concat org-octopress-directory-top "/_posts"))
