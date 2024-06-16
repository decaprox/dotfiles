;;; early-init.el --- Early initialization -*- lexical-binding: t; -*-
;;; Commentary:
;;;     early-init.el is run before init.el,
;;;      - before package initialization, and
;;;      - before UI initialization

;;; Code:

;; In Emacs 27+, package initialization occurs before `user-init-file' is
;; loaded, but after `early-init-file'.
(setq package-enable-at-startup nil
      package-quickstart nil
      load-prefer-newer t)

;; Prevent the glimpse of un-styled Emacs by disabling these UI elements early.
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

(setq frame-inhibit-implied-resize t)

;;; early-init.el ends here
