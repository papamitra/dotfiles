;;; sphinx-frontend-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (sphinx-clean-pdf sphinx-clean-html sphinx-run-pdflatex
;;;;;;  sphinx-build-latex sphinx-build-html) "sphinx-frontend" "sphinx-frontend.el"
;;;;;;  (21258 38452 761215 447000))
;;; Generated autoloads from sphinx-frontend.el

(autoload 'sphinx-build-html "sphinx-frontend" "\
Compiles the rst file to html via sphinx and shows the output in a buffer.
Without `arg' saves current file.

\(fn ARG)" t nil)

(autoload 'sphinx-build-latex "sphinx-frontend" "\
Compiles the rst file to latex via sphinx and shows the output in a buffer.
Without `arg' saves current file.

\(fn ARG)" t nil)

(autoload 'sphinx-run-pdflatex "sphinx-frontend" "\
Ad-hoc call pdflatex for LaTeX-builded documentation.

\(fn)" t nil)

(autoload 'sphinx-clean-html "sphinx-frontend" "\
Removes `sphinx-output-dir-html' dir.

\(fn)" t nil)

(autoload 'sphinx-clean-pdf "sphinx-frontend" "\
Removes `sphinx-output-dir-pdf' dir.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("sphinx-frontend-pkg.el") (21258 38452
;;;;;;  783066 57000))

;;;***

(provide 'sphinx-frontend-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; sphinx-frontend-autoloads.el ends here
