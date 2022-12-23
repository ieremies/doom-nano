;;; doom-nano-dark.el --- inspired by Nicolas Rougier's work -*- lexical-binding: t; no-byte-compile: t; -*-
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

(def-doom-theme doom-nano-dark
  "Theme inspired by Nicolas Rougier's NANO."

  ;; name      default/256/16
  ((bg         '("#2E3440"))
   (bg-alt     (doom-darken bg 0.15))
   (base0      '("#969896"))
   (base1      '("#f1f3f5"))
   (base2      '("#444444"))
   (base3      '("#cccccc"))
   (base4      '("#e7e7e7"))
   (base5      '("#c5c8c6"))
   (base6      '("#fafafa"))
   (base7      '("#dfdfdf"))
   (base8      '("#fafafa"))
   (fg         '("#ECEFF4"))
   (fg-alt     (doom-lighten fg 0.15))

   (nano-highlight  '("#3B4252")) ;; Polar Night 1 / nord  1
   (nano-critical   '("#EBCB8B")) ;; Aurora        / nord 11
   (nano-salient    '("#81A1C1")) ;; Frost         / nord  9
   (nano-strong     '("#ECEFF4")) ;; Snow Storm 3  / nord  6
   (nano-popout     '("#D08770")) ;; Aurora        / nord 12
   (nano-subtle     '("#434C5E")) ;; Polar Night 2 / nord  2
   (nano-faded      '("#677691")) ;;

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
   (doom-modeline-buffer-modified :weight 'bold :foreground fg)
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

;;; doom-nano-dark.el ends here
