;;; setup-corfu.el -- Corfu initialization -*- lexical-binding: t -*-
;;; Commentary:
;;;     Corfu is a small package, which relies on the Emacs completion facilities
;;;     and concentrates on providing a polished completion UI.

;;; Code:

(use-package corfu
  :straight t
  ;; ;; enable only for certain modes
  :hook ((prog-mode . corfu-mode)
         (shell-mode . corfu-mode)
         (eshell-mode . corfu-mode))
  :bind (:map corfu-map
              ("C-SPC" . corfu-insert-separator)
              ("M-SPC" . corfu-insert-separator)
              ("RET" . corfu-insert)             ; enter does not complete
              ;; ("S-RET" . corfu-insert)
              ("C-n" . corfu-next)
              ("M-k" . corfu-next)
              ("C-p" . corfu-previous)
              ("M-i" . corfu-previous)
              ("TAB" . corfu-complete)
              ("<tab>" . corfu-complete))
  :custom
  (corfu-cycle nil)                 ; disable cycling for `corfu-next/previous'
  (corfu-auto t)                    ; enable auto completion
  (corfu-auto-prefix 1)             ; auto complete after a number of typed characters
  (corfu-auto-delay 1.0)            ; auto complete after a delay
  ;;(corfu-auto nil)                    ; disable auto completion
  (corfu-separator ?\s)             ; whitespace is orderless field separator
  (corfu-quit-at-boundary 'separator) ; quit at completion boundary
  (corfu-quit-no-match nil)         ; do not quit if there is no match
  (corfu-preview-current 'insert)   ; insert current candidate preview
  (corfu-preselect-first nil)       ; disable candidate preselection
  (corfu-on-exact-match nil)        ; configure handling of exact matches
  (corfu-echo-documentation 0.25)   ; enable documentation in the echo area
  (corfu-scroll-margin 5)           ; use scroll margin
  :init
  (global-corfu-mode 1)
  ;;(corfu-history-mode 1)
  :config
  (defun custom-corfu-eshell-mode-hook ()
    (setq-local corfu-auto nil
                corfu-quit-at-boundary t
                corfu-quit-no-match t)
    (corfu-mode 1))
  (add-hook 'eshell-mode-hook #'custom-corfu-eshell-mode-hook))

;;; End:

(provide 'setup-corfu)

;;; setup-corfu.el ends here
