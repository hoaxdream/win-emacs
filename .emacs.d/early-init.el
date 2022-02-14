;;; early-init.el --- Emacs early-init -*- lexical-binding: t; -*-
;;; Code:
;;; Commentary:

;; Initializeinstalled packages.
(setq package-enable-at-startup t)

;; Prevent the \*scratch* buffer from loading a mode.
(setq initial-major-mode 'fundamental-mode)

;; Allow loading from the package cache.
(defvar package-quickstart)
(setq package-quickstart t)

;; Garbage collections
(setq gc-cons-percentage 0.6)

;; Disable GUI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)
(setq use-file-dialog nil)

;; Do not resize the frame at this early stage.
(setq frame-inhibit-implied-resize t)

;; Disable backups
(setq make-backup-files nil
      auto-save-default nil
      create-lockfiles nil)

;; Indention
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq-default org-edit-src-content-indention 0)

;; Misc
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default org-display-custom-times t)
(setq-default org-time-stamp-custom-formats '("<%a %b %d %Y>" . "<%a %b %d %Y %I:%M %p>"))

;; Default directory
(setq default-directory "c:/Home/")

;; Font
(set-face-attribute 'default nil :font "CaskaydiaCove NF" :height 150)

;; Code blocks color
(custom-set-faces
 '(org-block-begin-line
   ((t (:foreground "#d8983f" :background "#1d2021" :extend t))))
 '(org-block
   ((t (:background "#1d2021" :extend t))))
 '(org-block-end-line
   ((t (:foreground "#d8983f":background "#1d2021" :extend t)))))

;; Line numbering
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

(org-babel-load-file (locate-user-emacs-file "init.org"))

(provide 'early-init)
;;; early-init.el ends here
