;; need melpa temporarily
(setq *CHROME-PACK-TEMPORARY-PACKAGE-ARCHIVES* package-archives)

(install-packs
 '(edit-server)
 (add-to-list '*CHROME-PACK-TEMPORARY-PACKAGE-ARCHIVES* '("melpa" . "http://melpa.milkbox.net/packages/") t))

;; edit-server
(if (and (daemonp) (locate-library "edit-server"))
     (progn
       (require 'edit-server)
       (setq edit-server-new-frame nil)
       (edit-server-start)))

;; Load bindings config
(live-load-config-file "bindings.el")
