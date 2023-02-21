;;; doom-nano-dark-theme.el --- inspired by Nicolas Rougier's work -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: -
;; Author: ieremies <https://github.com/ieremies>
;; Maintainer:
;; Source: https://github.com/ieremies/doom-nano
;;
;;; Commentary: doom-nord used as a basis.
;;; Code:

(require 'doom-themes)

;;
;;; Variables

;;
;;; Theme definition

(def-doom-theme doom-nano-dark
  "Theme inspired by Nicolas Rougier's NANO."

  ((bg         '("#2E3440"))
   (bg-alt     '("#272C36"))
   (base0      '("#191C25"))
   (base1      '("#242832"))
   (base2      '("#2C333F"))
   (base3      '("#373E4C"))
   (base4      '("#434C5E"))
   (base5      '("#4C566A"))
   (base6      '("#9099AB"))
   (base7      '("#D8DEE9"))
   (base8      '("#F0F4FC"))
   (fg         '("#ECEFF4"))
   (fg-alt     '("#E5E9F0"))

   (nano-highlight  '("#3B4252")) ;; Polar Night 1 / nord  1
   (nano-critical   '("#EBCB8B")) ;; Aurora        / nord 11
   (nano-salient    '("#81A1C1")) ;; Frost         / nord  9
   (nano-strong     '("#ECEFF4")) ;; Snow Storm 3  / nord  6
   (nano-popout     '("#D08770")) ;; Aurora        / nord 12
   (nano-subtle     '("#434C5E")) ;; Polar Night 2 / nord  2
   (nano-faded      '("#677691")) ;;

   (grey       base4)
   (red        '("#BF616A")) ;; Nord11
   (orange     '("#D08770")) ;; Nord12
   (green      '("#A3BE8C")) ;; Nord14
   (teal       '("#8FBCBB")) ;; Nord7
   (yellow     '("#EBCB8B")) ;; Nord13
   (blue       '("#81A1C1")) ;; Nord9
   (dark-blue  '("#5E81AC")) ;; Nord10
   (magenta    '("#B48EAD")) ;; Nord15
   (violet     '("#5D80AE")) ;; ??
   (cyan       '("#88C0D0")) ;; Nord8
   (dark-cyan  '("#507681")) ;; ??

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
   (window-divider-first-pixel                   :foreground bg)
   (window-divider-last-pixel                    :foreground bg)
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
   (org-block                                   :background nano-highlight :extend t)
   (org-block-begin-line                        :foreground nano-faded :weight 'light :extend t)
   (org-block-end-line                          :foreground nano-faded :weight 'light :extend t)
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
   (org-level-2                                 :inherit 'org-level-1)
   (org-level-3                                 :inherit 'org-level-2)
   (org-level-4                                 :inherit 'org-level-3)
   (org-level-5                                 :inherit 'org-level-4)
   (org-level-6                                 :inherit 'org-level-5)
   (org-level-7                                 :inherit 'org-level-6)
   (org-level-8                                 :inherit 'org-level-7)
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
   (company-scrollbar-fg                        :foreground nano-faded :weight 'light :background fg)
   (company-scrollbar-bg                        :background nano-faded)
   (company-tooltip-common                      :foreground nano-faded :weight 'light)
   (company-tooltip-common-selection            :weight 'medium :background nano-popout)
   (company-tooltip-annotation-selection        :background nano-subtle :weight 'medium)

   ))

;;; doom-nano-dark-theme.el ends here
