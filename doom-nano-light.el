;;; doom-nano-light.el --- inspired by Nicolas Rougier's work -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: -
;; Author: ieremies <https://github.com/ieremies>
;; Maintainer:
;; Source: https://github.com/ieremies/doom-nano
;;
;;; Commentary: Used as a basis the doom-plain theme.
;;; Code:

(require 'doom-themes)

;;
;;; Variables

;;
;;; Theme definition

(def-doom-theme plain2
  "Theme inspired by Nicolas Rougier's NANO."

  ;; name      default/256/16
  ((bg         '("#ffffff"))
   (bg-alt     '("#f3f3f3"))
   (base0      '("#969896"))
   (base1      '("#f1f3f5"))
   (base2      '("#444444"))
   (base3      '("#cccccc"))
   (base4      '("#e7e7e7"))
   (base5      '("#c5c8c6"))
   (base6      '("#fafafa"))
   (base7      '("#dfdfdf"))
   (base8      '("#fafafa"))
   (fg         '("#37474F"))
   (fg-alt     (doom-lighten fg 0.15))

   (nano-foreground '("#37474F")) ;; Blue Grey / L800
   (nano-background '("#FFFFFF")) ;; White
   (nano-highlight  '("#FAFAFA")) ;; Very Light Grey
   (nano-critical   '("#FF6F00")) ;; Amber / L900
   (nano-salient    '("#673AB7")) ;; Deep Purple / L500
   (nano-strong     '("#000000")) ;; Black
   (nano-popout     '("#FFAB91")) ;; Deep Orange / L200
   (nano-subtle     '("#ECEFF1")) ;; Blue Grey / L50
   (nano-faded      '("#B0BEC5")) ;; Blue Grey / L200

   (grey       fg)
   (red        '("#EF5350"))
   (dark-blue  '("#42A5F5"))
   (blue       '("#29B6F6"))
   (orange     '("#FFA726"))
   (green      '("#9CCC65"))
   (teal       '("#0097A7"))
   (yellow     '("#FBC02D"))
   (magenta    '("#EC407A"))
   (violet     '("#AB47BC"))
   (cyan       '("#26C6DA"))
   (dark-cyan  '("#00838F"))

   ;; face categories -- required for all themes
   (highlight      nano-subtle)
   (vertical-bar   base5)
   (selection      base1)
   (builtin        nano-salient)
   (comments       nano-faded)
   (doc-comments   nano-faded)
   (constants      nano-salient)
   (functions      nano-strong)
   (keywords       nano-salient)
   (methods        nano-strong)
   (operators      fg)
   (type           nano-salient)
   (strings        nano-popout)
   (variables      nano-strong)
   (numbers        base0)
   (region         nano-subtle)
   (error          nano-critical)
   (warning        nano-popout)
   (success        nano-salient)
   (vc-modified    base5)
   (vc-added       (doom-lighten fg 0.7))
   (vc-deleted     base2)
   (shadow         nano-faded)
   (match          nano-popout)
   (link           blue)

   ;; custom categories
   (-modeline-pad 1)
   ;;  (when doom-plain-padded-modeline
   ;;    (if (integerp doom-plain-padded-modeline) doom-plain-padded-modeline 4)))

   (modeline-bg              (doom-darken bg-alt 0.15))
   (modeline-bg-alt          (doom-darken bg-alt 0.1))
   (modeline-bg-inactive     (doom-darken bg-alt 0.1))
   (modeline-bg-inactive-alt bg-alt)
   (modeline-fg              fg)
   (modeline-fg-alt          (doom-darken modeline-bg-inactive 0.35)))

  ;;;; Base theme face overrides
  ((error   :underline `(:style wave :color ,error))
   (warning :underline `(:style wave :color ,warning))
   ((font-lock-constant-face &override)      :slant 'italic)
   ((font-lock-comment-face &override)       :slant 'italic)
   ((font-lock-function-name-face &override) :slant 'italic)
   ((font-lock-type-face &override)          :slant 'italic)
   (hl-line :background base8)
   ((line-number &override) :foreground base3)
   ((line-number-current-line &override) :foreground base2)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground highlight)

   ;;;; doom-modeline
   (doom-modeline-bar :background modeline-bg)
   (doom-modeline-bar-inactive :inherit 'doom-modeline-bar)
   (doom-modeline-project-dir :foreground fg)
   (doom-modeline-buffer-file :foreground fg)
   (doom-modeline-buffer-modified :weight 'bold :foreground "#000000")
   (doom-modeline-panel :inherit 'mode-line-highlight :background base3 :foreground fg)
   ;;;; ivy
   (ivy-posframe :background bg-alt)
   ;;;; magit
   ((magit-diff-added-highlight &override)   :foreground fg :background (doom-blend vc-added bg 0.3))
   ((magit-diff-removed &override)           :foreground (doom-lighten fg 0.4) :background (doom-blend vc-deleted bg 0.1))
   ((magit-diff-removed-highlight &override) :foreground fg :background (doom-blend vc-deleted bg 0.22))
   ;;;; lsp-mode
   (lsp-headerline-breadcrumb-symbols-face :foreground keywords :weight 'bold)
   ;;;; outline <built-in>
   (outline-1 :slant 'italic :foreground fg-alt)
   (outline-2 :inherit 'outline-1 :foreground base2)
   (outline-3 :inherit 'outline-2)
   (outline-4 :inherit 'outline-3)
   (outline-5 :inherit 'outline-4)
   (outline-6 :inherit 'outline-5)
   (outline-7 :inherit 'outline-6)
   (outline-8 :inherit 'outline-7)
   ;;;; org <built-in>
   ((org-block &override) :background bg-alt)
   ((org-block-begin-line &override) :foreground base5)
   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-alt)))))

;;; doom-nano-light.el ends here
