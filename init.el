(install-packs '(                 ;; to help in editing textarea in chrome
                 edit-server))


;; edit-server
(if (and (daemonp) (locate-library "edit-server"))
     (progn
       (require 'edit-server)
       (setq edit-server-new-frame nil)
       (edit-server-start)))

;; Load bindings config
(live-load-config-file "bindings.el")
