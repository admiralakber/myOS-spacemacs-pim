;;; Identity
(setq user-full-name "Aqeel Akber")
(setq user-mail-address "aqeel.akber@gmail.com")
(setq mail-host-address (last (split-string user-mail-address "@")))

;;; Email / Directories
(setq message-directory "~/Mail/")

;;; Email / Options
(setq sendmail-program "msmtp-enqueue.sh")

;;; Blog / Directories
(setq org-octopress-directory-top "~/Blog/src")

;;; Journal
(setq org-journal-dir "~/Journal/")
(setq org-journal-file-format "J%Y%m%d")
(setq org-journal-date-format "<%Y-%m-%d> (%Y-%V-%u %j)")
(setq org-journal-date-prefix (concat "#+TITLE: Journal Entry - " system-name "/\n"
                                      "#+AUTHOR: " user-full-name "\n"
                                      "#+FILETAGS: :" system-name ":journal:" "\n"
                                      "#+DATE: "))
(setq org-journal-time-format "Entry started %H:%M:%S%z\n  ")
(setq org-journal-time-prefix "* ")
(setq org-journal-enable-agenda-integration t)
(setq org-journal-enable-encryption t)
(setq org-journal-carryover-items nil)
