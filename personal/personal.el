;;; Custom init file for Prelude

;; Spell checking language
(setq ispell-dictionary "english")

(prelude-require-package 'automargin)
(require 'automargin)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Coding
;;;

;;; CMake ---------------------------------------------------------------------
(prelude-require-package 'cmake-mode)

;;; Python --------------------------------------------------------------------
(prelude-require-package 'jedi)
(prelude-require-package 'jedi-direx)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;;; Clojure -------------------------------------------------------------------
;; Disable the display of the error buffer on error. The buffer is
;; still in the background and can be accessed with
;;
;;    cider-visit-error-buffer
;;
(setq cider-show-error-buffer nil)

;; Always use pretty printing in clojure repl
(setq cider-repl-use-pretty-printing t)

;;; YAML ----------------------------------------------------------------------
(prelude-require-package 'yaml-mode)

;;; Latex ---------------------------------------------------------------------
(prelude-require-package 'auctex)

;; Turn on reftex
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'centered-window-mode)
(setq reftex-plug-into-AUCTeX t)

;; Enable synctex
(setq TeX-source-correlate-method 'synctex)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Misc utilities
;;;

;;; ---------------------------------------------------------------------------
;;; Google translate
(prelude-require-package 'google-translate)
(setq google-translate-default-source-language "it")
(setq google-translate-default-target-language "en")

;;; ---------------------------------------------------------------------------
;;; Directory diff and navigation
(prelude-require-package 'ztree)

;;; ---------------------------------------------------------------------------
;;; Expand-region
(prelude-require-package 'expand-region)
(global-set-key (kbd "M-2") #'er/expand-region)

;;; ---------------------------------------------------------------------------
;;; Smart mode line
(prelude-require-package 'smart-mode-line)
(sml/setup)
(sml/apply-theme 'dark)
(setq sml/mode-width 'full)
