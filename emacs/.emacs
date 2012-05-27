
;; Optionen für Latex


(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t) 


;;Zeilenumbruch
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
;;;;Syntax Higlight
(add-hook 'LaTeX-mode-hook 'turn-on-font-lock)
;;;;; Mathe Modus
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;;;;; Reftex einflechten und laden
(setq reftex-plug-into-AUCTeX t)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;;;; Nur benutzen falls Auctex > 11.81 mit preview-latex:
(load "preview-latex.el" nil t t)
;;;;; aspell ist besser als ispell.
;;;;; Zeile kommentieren, falls nicht installiert:
(setq-default ispell-program-name "aspell")
;;;;; Deutsche Rechtschreibung falls \usepackage{ngerman}
;;;;; oder german benutzt wird
(add-hook 'TeX-language-de-hook
(function (lambda () (ispell-change-dictionary "german8"))))
;;;
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 72)
(setq-default TeX-master nil)

(setq-default latex-run-command "luatex")
(show-paren-mode t)
