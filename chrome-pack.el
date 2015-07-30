;;; chrome-pack.el --- Chrome/Chromium setup

;;; Commentary:

;;; Code:

(use-package edit-server
  :config
  (when (daemonp)
    (custom-set-variables '(edit-server-new-frame nil))
    (edit-server-start)))

(provide 'chrome-pack)
;;; chrome-pack.el ends here
