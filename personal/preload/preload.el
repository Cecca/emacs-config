;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; UI tweaks
;;;

;; Font
(set-face-attribute 'default nil :height 115)
;; Transparent background
                                        ;(set-frame-parameter nil 'alpha '(100 100))
;; Disable the scroll bar
(scroll-bar-mode -1)

;; Change the default theme
;(setq prelude-theme 'solarized-dark)

;; Disable warnings from guru mode
(setq prelude-guru nil)
