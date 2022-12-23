;; Defines nano-color-*
(require 'nano-base-colors)
(require 'nano-theme-light)

;; Defines nano-face-*
(require 'nano-faces)
(setq nano-font-family-monospaced (font-get doom-font :family)
      nano-font-family-proportional nil
      nano-font-size 10) ;;TODO make it float and 10.5
(nano-faces)

;; Apply the faces
;; Comment out any that don't apply to you
(require 'nano-theme)
(nano-theme--basics)
(nano-theme--font-lock) ;; TODO change for tree-sitter
;; (nano-theme--mode-line) ;; BUG does not work well with doom-modeline
(nano-theme--minibuffer)
;; (nano-theme--buttons)
(nano-theme--info)
;; (nano-theme--speedbar)
(nano-theme--bookmark)
(nano-theme--message)
(nano-theme--outline) ;; not a fan
(nano-theme--customize)
(nano-theme--package)
(nano-theme--flyspell)
(nano-theme--ido)
(nano-theme--diff)
;; (nano-theme--term) ;; TODO this should not be hard-coded
(nano-theme--calendar)
(nano-theme--agenda)
(nano-theme--org)
;; (nano-theme--mu4e)
;; (nano-theme--elfeed)
(nano-theme--deft)
(nano-theme--rst)
;; (nano-theme--markdown)
;; (nano-theme--ivy)
;; (nano-theme--helm)
;; (nano-theme--helm-swoop)
;; (nano-theme--helm-occur)
;; (nano-theme--helm-ff)
;; (nano-theme--helm-grep)
(nano-theme--hl-line)
(nano-theme--company)

(provide 'doom-nano-faces)
