;;; -*- Emacs-Lisp -*-
;;; -*- coding: utf-8 -*-

(add-to-list 'load-path "~/.emacs.d/site-lisp/twittering-mode")

(require 'twittering-mode)

(setq twittering-status-format
      "%C{%Y/%m/%d %H:%M:%S} %s > %T // from %f%L%r%R")

(setq twittering-update-status-function 'twittering-update-status-from-pop-up-buffer)
