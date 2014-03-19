
;; for Haskell
;(load "haskell-mode/haskell-site-file")

(require 'haskell-mode)
;(add-to-list 'auto-mode-alist '("\\.[hg]s$" . haskell-mode))

(autoload 'ghc-init "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)) (flymake-mode))
;(add-hook 'haskell-mode-hook (lambda () (ghc-init) (flymake-mode)))
;(add-hook 'inferior-haskell-mode-hook 'turn-on-ghci-completion)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'linum-mode)
