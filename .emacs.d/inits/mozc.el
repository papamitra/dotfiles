;;; -*- Emacs-Lisp -*-
;;; -*- coding: utf-8 -*-

;; for mozc
(load-file "/usr/share/emacs/site-lisp/emacs-mozc/mozc.el")
(setq default-input-method "japanese-mozc")
(global-set-key (kbd "C-o") 'toggle-input-method)
