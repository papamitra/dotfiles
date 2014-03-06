;; yasnippet
(add-to-list 'load-path
	     "~/.emacs.d/site-lisp/yasnippet")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/site-lisp/yasnippet/snippets")
(yas/load-directory "~/.emacs.d/snippets")
