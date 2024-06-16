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
  :ensure t)

(provide 'setup-theme)

;;; setup-theme.el ends here
