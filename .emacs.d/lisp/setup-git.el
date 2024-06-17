;;; setup-git.el --- Git setup -*- lexical-binding: t; -*-
;;; Commentary:

;;; Code:

(use-package magit
  :straight t)

(use-package diff-hl
  :straight t
  :after magit
  :hook ((magit-pre-refresh . diff-hl-magit-pre-refresh)
         (magit-pre-refresh . diff-hl-magit-post-refresh))
  :init (global-diff-hl-mode)
  :config (diff-hl-flydiff-mode 1))


;;; End:

(provide 'setup-git)

;;; setup-git.el ends here
