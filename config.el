;;; Identity
(setq user-full-name "Aqeel Akber")
(setq user-mail-address "aqeel.akber@gmail.com")
(setq mail-host-address (last (split-string user-mail-address "@")))

;;; Email / Directories
(setq message-directory "~/Mail/")

;;; Email / Options
(setq sendmail-program "msmtp-enqueue.sh")

;;; Blog / Directories
(setq org-octopress-setup-file "~/Blog/setupfile.org")
(setq org-octopress-directory-top "~/Blog/src")

;;; Journal
(setq org-journal-dir "~/Journal/")
(setq org-journal-date-format "Date: %Y-%m-%d [%Y-%W-%u %j]")
(setq org-journal-time-format "Entry: %H:%M:%S%z")
(setq org-journal-enable-agenda-integration t)
