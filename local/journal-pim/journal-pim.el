(provide 'journal-pim)

(spacemacs|use-package-add-hook org-journal
  :post-init
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
