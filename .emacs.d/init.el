;;; init.el --- Emacs initialization file -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; Straight package manager
;; TODO: maybe we need to move this to a separate file in the lisp directory?

;;; initialize package system
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; bootstrap
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; use straight with `use-package'
(straight-use-package 'use-package)

;; turn off package file modification check at startup
(setq straight-check-for-modifications '(find-when-checking check-on-save))

;; update recipe repositories
;;(straight-pull-recipe-repositories)


(use-package emacs
  :config
  ;; auxilary functions
  (defun load-path-prepend (dir)
    (add-to-list 'load-path (file-name-concat user-emacs-directory dir)))

  (load-path-prepend "lisp/")

  (require 'setup-core)
  (require 'setup-ui)
  (require 'setup-keyboard)
  (require 'setup-theme)

  (require 'setup-corfu)
  (require 'setup-ido)
  (require 'setup-flycheck)
  (require 'setup-move-text)
  (require 'setup-yasnippet)
  (require 'setup-platformio)
  (require 'setup-git)

  (setq custom-file "~/.emacs.d/custom.el")
  (when (file-exists-p custom-file)
    (load custom-file)))

;;; init.el ends here
