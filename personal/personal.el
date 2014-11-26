;;; Custom init file for Prelude

;; Spell checking language
(setq ispell-dictionary "english")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Coding
;;;

;;; CMake ---------------------------------------------------------------------
(prelude-require-package 'cmake-mode)

;;; Clojure -------------------------------------------------------------------
;; First, let's take a look at how it behaves out of the box

;;; YAML ----------------------------------------------------------------------
(prelude-require-package 'yaml-mode)

;;; Latex ---------------------------------------------------------------------
(prelude-require-package 'auctex)

;; Turn on reftex
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
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
