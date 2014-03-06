;; for f#
(setq load-path (cons "~/.emacs.d/site-lisp/fsharp" load-path))
(setq auto-mode-alist (cons '("\\.fs[iylx]?$" . fsharp-mode) auto-mode-alist))
(autoload 'fsharp-mode "fsharp" "Major mode for editing F# code." t)
(autoload 'run-fsharp "inf-fsharp" "Run an inferior F# process." t)

(setq inferior-fsharp-program "fsharpi --gui-")
(setq fsharp-compiler "fsharpc")
(put 'set-goal-column 'disabled nil)
