;;; setup-ui.el --- UI initialization -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(toggle-frame-fullscreen)
(split-window-horizontally)

(global-display-line-numbers-mode)
(line-number-mode t)
(column-number-mode t)
(delete-selection-mode t)
(global-hl-line-mode +1)
(show-paren-mode t)

(setq inhibit-startup-message t)
(setq make-backup-files nil)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq ring-bell-function 'ignore)

(setq-default indent-tabs-mode nil)
(setq scroll-step            1
      scroll-conservatively  10000)

;; Disable autosplit
(setq split-width-threshold 9999)
(setq split-height-threshold 9999)

(use-package unicode-fonts
  :straight t
  :config
  (setq inhibit-compacting-font-caches t)
  (unicode-fonts-setup))

;;; End:

(provide 'setup-ui)

;;; setup-ui.el ends here
