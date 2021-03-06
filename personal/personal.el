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
;(prelude-require-package 'jedi)
;(prelude-require-package 'jedi-direx)
;(add-hook 'python-mode-hook 'jedi:setup)
;(setq jedi:complete-on-dot t)

;;; Clojure -------------------------------------------------------------------
;; Disable the display of the error buffer on error. The buffer is
;; still in the background and can be accessed with
;;
;;    cider-visit-error-buffer
;;
(setq cider-show-error-buffer nil)

;; Always use pretty printing in clojure repl
(setq cider-repl-use-pretty-printing t)

;;; EBNF ----------------------------------------------------------------------

(define-generic-mode 'ebnf-mode
  '(("(*" . "*)"))
  '("=")
  '(("^[^ \t\n][^=]+" . font-lock-variable-name-face)
    ("['\"].*?['\"]" . font-lock-string-face)
    ("\\?.*\\?" . font-lock-negation-char-face)
    ("\\[\\|\\]\\|{\\|}\\|(\\|)\\||\\|,\\|;" . font-lock-type-face)
    ("[^ \t\n]" . font-lock-function-name-face))
  '("\\.ebnf\\'")
  `(,(lambda () (setq mode-name "EBNF")))
  "Major mode for EBNF metasyntax text highlighting.")

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
;;; Multiple cursors
(prelude-require-package 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

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
(sml/apply-theme 'light)
(setq sml/mode-width 'full)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Mail configuration
;;;

(require 'mu4e)

;; default
(setq mu4e-maildir "~/Mail/Gmail")
(setq mu4e-drafts-folder "/[Gmail].Bozze")
(setq mu4e-sent-folder   "/[Gmail].Posta inviata")
(setq mu4e-trash-folder  "/[Gmail].Cestino")

(setq mu4e-sent-messages-behavior 'delete)

(setq mu4e-get-mail-command "offlineimap")

;; something about ourselves
(setq
 user-mail-address "matteo.ceccarello@gmail.com"
 user-full-name  "Matteo Ceccarello"
 message-signature
 (concat
  "Matteo Ceccarello, PhD student, Computer Engineering\n"
  "Universita' di Padova, Dipartimento di Ingegneria dell'Informazione\n"
  "URL: http://www.dei.unipd.it/~ceccarel\n"
  "LinkedIn: http://it.linkedin.com/pub/matteo-ceccarello/60/322/931/\n"
  "\n"))


(require 'smtpmail)

(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-stream-type 'starttls
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-smtp-user "matteo.ceccarello@gmail.com")
