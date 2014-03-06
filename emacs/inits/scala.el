;;; -*- Emacs-Lisp -*-
;;; -*- coding: utf-8 -*-

; for scala
(add-to-list 'load-path "~/opt/scala/misc/scala-tool-support/emacs")
(require 'scala-mode-auto)
(setq scala-interpreter "~/opt/scala/bin/scala")

(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-to-list 'load-path "~/opt/ensime/dist/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(defun my-scala-mode-hook ()
  (define-key scala-mode-map (kbd "C-c l") 'scala-mode-feature-tags-load)
  (define-key scala-mode-map (kbd "C-c .") 'find-tag)
)

(add-hook 'scala-mode-hook 'my-scala-mode-hook)
