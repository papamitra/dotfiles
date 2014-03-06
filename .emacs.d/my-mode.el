;;; -*- Emacs-Lisp -*-
;;; -*- coding: utf-8 -*-

(defun my-mode ()
  (interactive)
  (setq major-mode 'my-mode)
  (setq mode-name "私のモード")

  (setq my-local-map (make-keymap))

  (define-key my-local-map "h" 'backward-char)
  (define-key my-local-map "j" 'previous-line)
  (define-key my-local-map "k" 'next-line)
  (define-key my-local-map "l" 'forward-char)

  (define-key global-map "\C-ch" 'hello-world)

  (use-local-map my-localmap))

(defun hello-world ()
  (interactive)
  (insert "Hello, world!\n"))

(defun test-string (str)
  (interactive "sInput string: ")
  (insert str))
(define-key global-map "\C-cs" 'test-string)
