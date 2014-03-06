;;; -*- Emacs-Lisp -*-
;;; -*- coding: utf-8 -*-

;(load "elscreen" "ElScreen" t)
(require 'elscreen)

; C-', C-;でscreenを移動
;(global-set-key [?\C-'] 'elscreen-next)
(define-key global-map (kbd "M-'") 'elscreen-next)
;(global-set-key [?\C-;] 'elscreen-previous)
(define-key global-map (kbd "M-;") 'elscreen-previous)
;(global-set-key [?\C-t] 'elscreen-clone)
(define-key global-map (kbd "M-t") 'elscreen-clone)
;(global-set-key [?\C-q] 'elscreen-kill) ; C-q [TAB]を使いたいのでコメントアウト
