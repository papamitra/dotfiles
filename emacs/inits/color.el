;;; -*- Emacs-Lisp -*-
;;; -*- coding: utf-8 -*-

; color-mode
(require 'color-theme)

(let ((term (getenv "TERM")))
  (if (not (or (equal term "xterm") (equal term "xterm-color") (equal term "screen") (equal term "linux") (equal term "screen.mlterm")))
      (progn
	(load "~/.emacs.d/site-lisp/my-color-theme.el")
	(my-color-theme))))
