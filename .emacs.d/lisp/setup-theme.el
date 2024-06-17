;;; setup-theme.el --- Theme settings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:
(use-package ample-theme
  :straight t
  :init (progn (load-theme 'ample t t)
               (load-theme 'ample-flat t t)
               (load-theme 'ample-light t t)
               (enable-theme 'ample))
  :defer t
  :ensure t
  :config (progn (set-face-background 'hl-line "#1f2527")
                 (set-face-foreground 'hl-line nil)
                 (set-face-background 'region "#666666")))

(provide 'setup-theme)

;;; setup-theme.el ends here
