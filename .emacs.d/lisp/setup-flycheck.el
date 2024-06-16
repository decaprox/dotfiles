;;; setup-flycheck.el --- Flychek checker -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package flycheck
  :straight t
  :hook (after-init . global-flycheck-mode))

;; flycheck checker for elisp packages
(use-package flycheck-package
  :straight t
  :after (flycheck)
  :config
  (flycheck-package-setup))

(use-package flyspell
  :straight (:type built-in)
  :commands (flyspell-mode
             flyspell-mode-off
             flyspell-prog-mode)
  :custom
  ;; this fixes the "enabling flyspell mode gave an error" bug
  (flyspell-issue-welcome-flag nil)
  (flyspell-sort-corrections nil)
  (flyspell-use-meta-tab nil))

(provide 'setup-flycheck)

;;; setup-flycheck.el ends here
