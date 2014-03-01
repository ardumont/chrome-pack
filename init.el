;;; chrome-pack.el --- Chrome/Chromium setup

;;; Commentary:

;;; Code:

(install-packs '(edit-server))

;; edit-server
(if (and (daemonp) (locate-library "edit-server"))
     (progn
       (require 'edit-server)
       (setq edit-server-new-frame nil)
       (edit-server-start)))

;;; chrome-pack.el ends here
