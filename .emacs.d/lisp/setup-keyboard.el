;;; setup-keyboard.el --- Global keybindings -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(global-set-key (kbd "C-x C-b") 'buffer-menu)
(global-set-key (kbd "C-:") 'eval-expression)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<right>") 'windmove-right)

;;; End:

(provide 'setup-keyboard)

;;; setup-keyboard.el ends here

