;;; setup-yasnippet.el --- YASNIPPET setup -*- lexical-binding: t -*-
;;; Commentary:
;;;     YASnippet is a template system for Emacs.
;;;     It allows you to type an abbreviation and automatically expand it into
;;;     function templates.

;;; Code:

(use-package yasnippet
  :straight t
  :config
  (yas-global-mode 1)

  (defun my/auto-expand-yasnippet ()
    "Automatically expand yasnippet on new .el files."
  (when (and (string= (file-name-extension buffer-file-name) "el")
             (= (point-min) (point-max)))
    (yas-insert-snippet (yas-lookup-snippet "elisp-template"))))
  
  (add-hook 'find-file-hook 'my/auto-expand-yasnippet))

;;; End:

(provide 'setup-yasnippet)

;;; setup-yasnippet.el ends here
