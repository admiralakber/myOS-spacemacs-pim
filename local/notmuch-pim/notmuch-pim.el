(provide 'notmuch-pim)

;; Send from correct email account
(setq message-sendmail-f-is-evil 't)
(setq message-send-mail-extra-arguments '("--read-envelope-from"))
(setq mail-specify-envelope-from 't)
(setq mail-envelope-from 'header)
(setq message-sendmail-envelope-from 'header)
;; PGP Encryption
(add-hook 'message-setup-hook 'mml-secure-sign-pgpmime)
(setq notmuch-crypto-process-mime t)
;; Writing emails
(setq message-default-mail-headers "Cc: \nBcc: \n")
;; Sending emails
(setq send-mail-function 'sendmail-send-it)
;; Generate the fcc dir
(setq notmuch-fcc-dirs nil)
(add-to-list 'notmuch-fcc-dirs (cons user-mail-address (concat user-mail-address "/Sent")))
