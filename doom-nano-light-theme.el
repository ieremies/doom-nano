;;; doom-nano-light-theme.el --- inspired by Nicolas Rougier's work -*- lexical-binding: t; no-byte-compile: t; -*-
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

(def-doom-theme doom-nano-light
  "Theme based on Nicolas Rougier's NANO."

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
   (highlight      nano-faded)
   (vertical-bar   bg)
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
   (-modeline-pad nil)

   (modeline-bg              (doom-darken bg-alt 0.15))
   (modeline-bg-alt          (doom-darken bg-alt 0.1))
   (modeline-bg-inactive     (doom-darken bg-alt 0.1))
   (modeline-bg-inactive-alt bg-alt)
   (modeline-fg              fg)
   (modeline-fg-alt          (doom-darken modeline-bg-inactive 0.35)))

  ;;;; Base theme face overrides
  ((default :foreground fg :background bg :weight 'light :height 105)

   ;; Structural
   (bold                                         :weight 'bold)
   (italic                                       :slant 'italic)
   (bold-italic                                  :weight 'bold :slant 'italic)

   (region                                       :background nano-subtle)
   (highlight                                    :background nano-subtle)

   (cursor                                       :background fg)
   (window-divider                               :foreground bg)
   (window-divider-first-pixel                   :foreground nano-background)
   (window-divider-last-pixel                    :foreground nano-background)
   (vertical-border                              :foreground nano-subtle)

   ;; Semantic
   (shadow                                       :foreground nano-faded :weight 'light)
   (success                                      :foreground nano-salient :weight 'light)
   (warning                                      :foreground nano-popout)
   (error                                        :background nano-critical)
   (match                                        :foreground nano-popout)

   ;; General
   (buffer-menu-buffer                           :weight 'medium)
   (minibuffer-prompt                            :weight 'medium)
   (link                                         :foreground nano-salient :weight 'light)
   (fringe                                       :foreground nano-faded :weight 'light)
   (fringe                                       :foreground nano-subtle :background bg)
   (isearch                                      :weight 'medium)
   (isearch-fail                                 :foreground nano-faded :weight 'light)
   (lazy-highlight                               :background nano-subtle)
   (trailing-whitespace                          :background nano-subtle)
   (show-paren-match                             :foreground nano-popout)
   (show-paren-mismatch                          :foreground nano-critical)
   (tooltip                                      :height 0.85)
   (secondary-selection                          :background nano-subtle)
   (completions-common-part                      :foreground nano-faded :weight 'light)

   ;; Font-lock
   (font-lock-comment-face                       :foreground nano-faded :weight 'light :slant 'italic)
   (font-lock-doc-face                           :foreground nano-faded :weight 'light)
   (font-lock-string-face                        :foreground nano-popout)
   (font-lock-constant-face                      :foreground nano-salient :weight 'light)
   (font-lock-warning-face                       :foreground nano-popout)
   (font-lock-function-name-face                 :weight 'medium)
   (font-lock-variable-name-face                 :weight 'medium)
   (font-lock-builtin-face                       :foreground nano-salient :weight 'light)
   (font-lock-type-face                          :foreground nano-salient :weight 'light)
   (font-lock-keyword-face                       :foreground nano-salient :weight 'light)
   (font-lock-function-name-face                 :foreground fg :weight 'bold)

   ;; Tree-sitter
   (tree-sitter-hl-face:number                  :slant 'normal)
   (tree-sitter-hl-face:function.call           :foreground fg :weight 'bold)
   (tree-sitter-hl-face:method.call             :foreground fg :weight 'bold)
   (tree-sitter-hl-face:property                :slant 'italic)
   (tree-sitter-hl-face:number                  :foreground nano-popout)
   ;; TODO its inherinting default causing weird behavior in org-block
   (tree-sitter-hl-face:puntuation              :background 'unspecified)

   ;; hl-line
   (hl-line                                     :background nano-highlight)

   ;; Info
   (info-menu-header                            :weight 'medium)
   ;; (info-header-node                           'nano-face-default)
   (info-index-match                            :foreground nano-salient :weight 'light)
   (Info-quoted                                 :foreground nano-faded :weight 'light)
   (info-title-1                                :weight 'medium)
   (info-title-2                                :weight 'medium)
   (info-title-3                                :weight 'medium)
   (info-title-4                                :weight 'medium)

   ;; Bookmark
   (bookmark-menu-heading                       :weight 'medium)
   (bookmark-menu-bookmark                      :foreground nano-salient :weight 'light)

   ;; Message
   (message-cited-text-1                        :foreground nano-faded :weight 'light)
   (message-cited-text-2                        :foreground nano-faded :weight 'light)
   (message-cited-text-3                        :foreground nano-faded :weight 'light)
   (message-cited-text-4                        :foreground nano-faded :weight 'light)
   (message-cited-text                          :foreground nano-faded :weight 'light)
   ;; (message-header-cc                          'nano-face-default)
   (message-header-name                         :weight 'medium)
   ;; (message-header-newsgroups                  'nano-face-default)
   ;; (message-header-other                       'nano-face-default)
   (message-header-subject                      :foreground nano-salient :weight 'light)
   (message-header-to                           :foreground nano-salient :weight 'light)
   ;; (message-header-xheader                'nano-face-default)
   (message-mml                                 :foreground nano-popout)
   (message-separator                           :foreground nano-faded :weight 'light)

   ;; Outline
   (outline-1                                   :weight 'bold :foreground fg)
   (outline-2                                   :inherit 'outline-1)
   (outline-3                                   :inherit 'outline-2)
   (outline-4                                   :inherit 'outline-3)
   (outline-5                                   :inherit 'outline-4)
   (outline-6                                   :inherit 'outline-5)
   (outline-7                                   :inherit 'outline-6)
   (outline-8                                   :inherit 'outline-7)

   ;; Customize
   (widget-field                                :background nano-subtle)
   (widget-button                               :weight 'medium)
   (widget-single-line-field                    :background nano-subtle)
   (custom-group-subtitle                       :weight 'medium)
   (custom-group-tag                            :weight 'medium)
   (custom-group-tag-1                          :weight 'medium)
   (custom-comment                              :foreground nano-faded :weight 'light)
   (custom-comment-tag                          :foreground nano-faded :weight 'light)
   (custom-changed                              :foreground nano-salient :weight 'light)
   (custom-modified                             :foreground nano-salient :weight 'light)
   (custom-face-tag                             :weight 'medium)
   (custom-variable-tag                         :weight 'medium)
   (custom-invalid                              :foreground nano-popout)
   (custom-visibility                           :foreground nano-salient :weight 'light)
   (custom-state                                :foreground nano-salient :weight 'light)
   (custom-link                                 :foreground nano-salient :weight 'light)

   ;; Flyspell
   (flyspell-duplicate                          :foreground nano-popout)
   (flyspell-incorrect                          :foreground nano-popout)

   ;; Ido
   (ido-first-match                             :foreground nano-salient :weight 'light)
   (ido-only-match                              :foreground nano-faded :weight 'light)
   (ido-subdir                                  :weight 'medium)

   ;; Diff
   (diff-header                                 :foreground nano-faded :weight 'light)
   (diff-file-header                            :weight 'medium)
   ;; (diff-context                           'nano-face-default)
   (diff-removed                                :foreground nano-faded :weight 'light)
   (diff-changed                                :foreground nano-popout)
   (diff-added                                  :foreground nano-salient :weight 'light)
   (diff-refine-added                           :foreground nano-salient :weight 'light)
   (diff-refine-changed                         :foreground nano-popout)
   (diff-refine-removed                         :foreground nano-faded :weight 'light :strike-through t)

   ;; Calendar
   (calendar-today                              :weight 'medium)

   ;; Org-agenda
   ;; (org-agenda-calendar-event             'nano-face-default)
   (org-agenda-calendar-sexp                    :foreground nano-salient :weight 'light)
   (org-agenda-clocking                         :foreground nano-faded :weight 'light)
   (org-agenda-column-dateline                  :foreground nano-faded :weight 'light)
   (org-agenda-current-time                     :weight 'medium)
   (org-agenda-date                             :foreground nano-salient :weight 'light)
   (org-agenda-date-today                       :foreground nano-salient :weight 'light)
   (org-agenda-date-weekend                     :foreground nano-faded :weight 'light)
   (org-agenda-diary                            :foreground nano-faded :weight 'light)
   (org-agenda-dimmed-todo-face                 :foreground nano-faded :weight 'light)
   (org-agenda-done                             :foreground nano-faded :weight 'light)
   (org-agenda-filter-category                  :foreground nano-faded :weight 'light)
   (org-agenda-filter-effort                    :foreground nano-faded :weight 'light)
   (org-agenda-filter-regexp                    :foreground nano-faded :weight 'light)
   (org-agenda-filter-tags                      :foreground nano-faded :weight 'light)
   ;;  (org-agenda-property-face                :foreground nano-faded :weight 'light)
   (org-agenda-restriction-lock                 :foreground nano-faded :weight 'light)
   (org-agenda-structure                        :weight 'medium)


   ;; Org
   (org-archived                                :foreground nano-faded :weight 'light)
   (org-block                                   :inherit hl-line)
   (org-block-begin-line                        :foreground nano-faded :weight 'light)
   (org-block-end-line                          :foreground nano-faded :weight 'light)
   (org-block                                   :extend t)
   (org-block-begin-line                        :extend t)
   (org-block-end-line                          :extend t)
   (org-checkbox                                :foreground nano-faded :weight 'light)
   (org-checkbox-statistics-done                :foreground nano-faded :weight 'light)
   (org-checkbox-statistics-todo                :foreground nano-faded :weight 'light)
   (org-clock-overlay                           :foreground nano-faded :weight 'light)
   (org-code                                    :foreground nano-faded :weight 'light)
   (org-column                                  :foreground nano-faded :weight 'light)
   (org-column-title                            :foreground nano-faded :weight 'light)
   (org-date                                    :foreground nano-faded :weight 'light)
   (org-date-selected                           :foreground nano-faded :weight 'light)
   (org-default                                 :foreground nano-faded :weight 'light)
   (org-document-info                           :foreground nano-faded :weight 'light)
   (org-document-info-keyword                   :foreground nano-faded :weight 'light)
   (org-document-title                          :foreground nano-faded :weight 'light)
   ;; (org-done                                    'nano-face-default)
   (org-drawer                                  :foreground nano-faded :weight 'light)
   (org-ellipsis                                :foreground nano-faded :weight 'light)
   (org-footnote                                :foreground nano-faded :weight 'light)
   (org-formula                                 :foreground nano-faded :weight 'light)
   (org-headline-done                           :foreground nano-faded :weight 'light)
   ;; (org-hide                                 :foreground nano-faded :weight 'light)
   ;; (org-indent                               :foreground nano-faded :weight 'light)
   (org-latex-and-related                       :foreground nano-faded :weight 'light)
   (org-level-1                                 :weight 'medium)
   (org-level-2                                 :weight 'medium)
   (org-level-3                                 :weight 'medium)
   (org-level-4                                 :weight 'medium)
   (org-level-5                                 :weight 'medium)
   (org-level-6                                 :weight 'medium)
   (org-level-7                                 :weight 'medium)
   (org-level-8                                 :weight 'medium)
   (org-link                                    :foreground nano-salient :weight 'light)
   (org-list-dt                                 :foreground nano-faded :weight 'light)
   (org-macro                                   :foreground nano-faded :weight 'light)
   (org-meta-line                               :foreground nano-faded :weight 'light)
   (org-mode-line-clock                         :foreground nano-faded :weight 'light)
   (org-mode-line-clock-overrun                 :foreground nano-faded :weight 'light)
   (org-priority                                :foreground nano-faded :weight 'light)
   (org-property-value                          :foreground nano-faded :weight 'light)
   (org-quote                                   :foreground nano-faded :weight 'light)
   (org-scheduled                               :foreground nano-faded :weight 'light)
   (org-scheduled-previously                    :foreground nano-faded :weight 'light)
   (org-scheduled-today                         :foreground nano-faded :weight 'light)
   (org-sexp-date                               :foreground nano-faded :weight 'light)
   (org-special-keyword                         :foreground nano-faded :weight 'light)
   (org-table                                   :foreground nano-faded :weight 'light)
   (org-tag                                     :foreground nano-popout)
   (org-tag-group                               :foreground nano-faded :weight 'light)
   (org-target                                  :foreground nano-faded :weight 'light)
   (org-time-grid                               :foreground nano-faded :weight 'light)
   (org-todo                                    :foreground nano-salient :weight 'light)
   ;; (org-upcoming-deadline                       'nano-face-default)
   (org-verbatim                                :foreground nano-popout)
   (org-verse                                   :foreground nano-faded :weight 'light)
   (org-warning                                 :foreground nano-popout)

   ;; Company
   (company-tooltip-selection                   :weight 'medium :background nano-popout)
   (company-tooltip                             :background nano-subtle)
   (company-scrollbar-fg                        :foreground nano-faded :weight 'light :background nano-foreground)
   (company-scrollbar-bg                        :background nano-faded)
   (company-tooltip-common                      :foreground nano-faded :weight 'light)
   (company-tooltip-common-selection            :weight 'medium :background nano-popout)
   (company-tooltip-annotation-selection        :background nano-subtle :weight 'medium)

   ;; ------------------------doom-plain---------------------------

   ;; Others
   ((line-number &override) :foreground base3)
   ((line-number-current-line &override) :foreground base2)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground fg)

   ;;;; ivy
   (ivy-posframe :background bg-alt)

   ;;;; magit
   ((magit-diff-added-highlight &override)   :foreground fg :background (doom-blend vc-added bg 0.3))
   ((magit-diff-removed &override)           :foreground (doom-lighten fg 0.4) :background (doom-blend vc-deleted bg 0.1))
   ((magit-diff-removed-highlight &override) :foreground fg :background (doom-blend vc-deleted bg 0.22))

   ;;;; lsp-mode
   (lsp-headerline-breadcrumb-symbols-face :foreground keywords :weight 'bold)
   ))

;;; doom-nano-light-theme.el ends here
