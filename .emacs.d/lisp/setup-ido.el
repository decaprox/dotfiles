;;; setup-ido.el --- Buffer and File Name Wildcard Searching -*- lexical-binding: t; -*-

;;; Commentary:
;; 

;;; Code:
(use-package ido
  :straight t
  :config
  (ido-mode)
  (setq ido-anywhere t)
  (setq ido-enable-flex-matching t)
  (setq ido-default-buffer-method 'selected-window)
  (setq ido-default-file-method 'selected-window)
  (setq ido-auto-merge-work-directories-length -1))

(provide 'setup-ido)

;;; setup-ido.el ends here
