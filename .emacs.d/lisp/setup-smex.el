;;; setup-smex.el --- M-x enhancement for Emacs -*- lexical-binding: t; -*-
;;; Commentary:
;;;   Built on top of Ido, it provides a convenient interface to your
;;;   recently and most frequently used commands.  And to all the other
;;;   commands, too.

;;; Code:

(use-package smex
  :straight t
  :init
  (smex-initialize)
  :bind
  (("M-x" . smex)
   ("M-X" . smex-major-mode-commands)
   ;; This is your old M-x.
   ("C-c M-x" . execute-extended-command))
  :config
  ;; Set the save file location
  (setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory)))

;;; End:

(provide 'setup-smex)

;;; setup-smex.el ends here
