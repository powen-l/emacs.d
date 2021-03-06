(wttr/plugin:prepend-to-load-path "rtags/src/")
(global-unset-key (kbd "M-g M-g"))
(global-set-key (kbd "M-g M-g") 'rtags-find-symbol-at-point)
(global-set-key (kbd "M-g f") 'rtags-location-stack-forward)
(global-set-key (kbd "M-g b") 'rtags-location-stack-back)
(global-set-key (kbd "M-g r") 'rtags-find-references-at-point)
(defun my-compile-func()
  (interactive)
  (save-buffer)
  (recompile))
(defun cc-hook-func()
  (local-set-key (kbd "M-g o") 'ff-find-other-file)
  (rtags-start-process-maybe)
  (local-set-key (kbd "<f5>") 'my-compile-func))
(add-hook 'c-mode-common-hook 'cc-hook-func)

(require 'rtags)
