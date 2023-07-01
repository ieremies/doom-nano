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

  (;; NANO colors
   (nano-foreground '("#37474F" "#37474F" "brightblack")) ;; Black
   (nano-background '("#FFFFFF" "#FFFFFF" "brightwhite")) ;; White
   (nano-highlight  '("#FAFAFA" "#FAFAFA" "brightblack")) ;; Very Light Grey
   (nano-critical   '("#FF6F00" "#FF6F00" "brightyellow")) ;; Amber / L900
   (nano-salient    '("#673AB7" "#673Ab7" "purple")) ;; Deep Purple / L500
   (nano-strong     '("#000000" "#263238" "brightblack")) ;; Black
   (nano-popout     '("#FFAB91" "#FFAB91" "yellow")) ;; Deep Orange / L200
   (nano-subtle     '("#ECEFF1" "#ECEFF1" "brightcuan")) ;; Blue Grey / L50
   (nano-faded      '("#B0BEC5" "#90A4AE" "cyan")) ;; Blue Grey / L200

   (bg         nano-background)
   (bg-alt     nano-background)
   (fg         nano-foregorund)
   (fg-alt     nano-foreground)

   (base0          '("#FFFFFF" "#FFFFFF" "white"))
   (base1          '("#E0E0E0" "#E0E0E0" "brightblack"))
   (base2          '("#C1C1C1" "#C1C1C1" "brightblack"))
   (base3          '("#A3A3A3" "#A3A3A3" "brightblack"))
   (base4          '("#848484" "#848484" "brightblack"))
   (base5          '("#666666" "#666666" "brightblack"))
   (base6          '("#474747" "#474747" "brightblack"))
   (base7          '("#282828" "#282828" "brightblack"))
   (base8          '("#000000" "#000000" "black"))

   (bright-blue    '("#BBDEFB" "#BBDEFB" "brightblue"))
   (bright-cyan    '("#B2EBF2" "#B2EBF2" "brightcyan"))
   (bright-green   '("#C8E6C9" "#C8E6C9" "brightgreen"))
   (bright-magenta '("#E1BEE7" "#E1BEE7" "brightmagenta"))
   (bright-red     '("#FFCDD2" "#FFCDD2" "brightred"))
   (bright-white   nano-background)
   (bright-yellow  '("#FFF9C4" "#FFF9C4" "brightyellow"))

   (blue           '("#42A5F5" "#42A5F5" "blue"))
   (cyan           '("#26C6DA" "#26C6DA" "cyan"))
   (dark-blue      '("#A0BCF8" "#A0BCF8" "blue"))
   (dark-cyan      '("#005478" "#005478" "cyan"))
   (green          '("#66BB6A" "#66BB6A" "green"))
   (grey           base4)
   (magenta        '("#AB47BC" "#AB47BC" "magenta"))
   (orange         '("#DA8548" "#DD8844" "brightred"))
   (red            '("#EF5350" "#EF5350" "red"))
   (teal           '("#4DB5BD" "#44B9B1" "brightgreen"))
   (violet         '("#B751B6" "#B751B6" "brightmagenta"))
   (white           nano-subtle)
   (yellow         '("#E2C12F" "#E2C12F" "yellow"))

   ;; face categories -- required for all themes
   (highlight      nano-highlight) ;; nano-faded)
   (vertical-bar   bg)
   (selection      nano-subtle) ;; base1)
   (builtin        nano-salient)
   (comments       nano-faded)
   (doc-comments   nano-faded)
   (constants      nano-salient)
   (functions      nano-strong)
   (keywords       nano-salient)
   (methods        nano-strong)
   (operators      nano-salient) ;; fg)
   (type           nano-salient)
   (strings        nano-popout)
   (variables      nano-strong)
   (numbers        nano-salient) ;; base0)
   (region         nano-subtle)
   (error          nano-critical)
   (warning        nano-popout)
   (success        nano-salient)
   (vc-modified    nano-popout) ;; base5)
   (vc-added       nano-salient) ;; (doom-lighten fg 0.7))
   (vc-deleted     nano-faded) ;; base2)
   (shadow         nano-popout)
   (match          nano-popout)
   (link           nano-salient) ;; blue)
   )

  ;;;; Base theme face overrides
  (
   ;; (default :foreground fg :background bg :weight 'light :height 105)

   ;; Structural
   (bold                                         :weight 'bold)
   (italic                                       :slant 'italic)
   (bold-italic                                  :weight 'bold :slant 'italic)

   (region                                       :background nano-subtle)
   (highlight                                    :background nano-subtle)

   (cursor                                       :background fg)
   (mouse                                        :foreground fg :background bg)
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
   (completions-annotations                      :foreground nano-faded)
   (completions-common-part                      :foreground nano-strong :weight 'bold)
   (completions-first-difference                 :foreground fg)
   (fill-column-indicator                        :foreground nano-subtle)
   (help-argument-name                           :foreground nano-faded)
   (link                                         :foreground nano-salient :weight 'light)
   (fringe                                       :foreground nano-faded :weight 'light)
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
   (tree-sitter-hl-face:puntuation              :background 'unspecified)

   ;; === Ace window ===========================================================

   (aw-leading-char-face :foreground nano-popout)
   (aw-background-face   :foreground nano-faded :background bg)

   ;; === ANSI colors ==========================================================

   (ansi-color-black          :foreground fg)
   (ansi-color-bold           :foreground nano-strong :weight 'bold)
   (ansi-color-bright-black   :foreground nano-strong :weight 'bold)
   (ansi-color-faint          :foreground nano-faded)
   (ansi-color-fast-blink     :foreground nano-faded)
   (ansi-color-slow-blink     :foreground nano-faded)
   (ansi-color-inverse        :foreground bg :background fg)
   (ansi-color-italic         :foreground fg :slant 'italic)
   (ansi-color-underline      :foreground nano-faded)
   (ansi-color-blue           :foreground blue)
   (ansi-color-bright-blue    :foreground bright-blue)
   (ansi-color-cyan           :foreground cyan)
   (ansi-color-bright-cyan    :foreground bright-cyan)
   (ansi-color-green          :foreground green)
   (ansi-color-bright-green   :foreground bright-green)
   (ansi-color-magenta        :foreground magenta)
   (ansi-color-bright-magenta :foreground bright-magenta)
   (ansi-color-red            :foreground red)
   (ansi-color-bright-red     :foreground bright-red)
   (ansi-color-white          :foreground white)
   (ansi-color-bright-white   :foreground bright-white)
   (ansi-color-yellow         :foreground yellow)
   (ansi-color-bright-yellow  :foreground bright-yellow)

   ;; === Buttons ==============================================================

   (button                             :foreground nano-faded :background nano-highlight :box nil)
   ((custom-button &override)          :foreground nano-faded :background nano-highlight :box nil)
   ((custom-button-unraised &override) :foreground nano-faded :background nano-highlight :box nil)
   ((custom-button-mouse &override)    :foreground fg :background nano-subtle :box nil)
   ((custom-button-pressed &override)  :foreground bg :background fg :box nil)

   ;; === Custom edit ==========================================================

   (custom-changed           :foreground nano-salient)
   (custom-comment           :foreground nano-faded)
   (custom-comment-tag       :foreground nano-faded)
   (custom-face-tag          :foreground nano-strong :weight 'bold)
   (custom-group-subtitle    :foreground nano-strong :weight 'bold)
   (custom-group-tag         :foreground nano-strong :weight 'bold)
   (custom-group-tag-1       :foreground nano-strong :weight 'bold)
   (custom-invalid           :foreground nano-popout)
   (custom-link              :foreground nano-salient)
   (custom-modified          :foreground nano-salient)
   (custom-state             :foreground nano-salient)
   (custom-variable-obsolete :foreground nano-faded)
   (custom-variable-tag      :foreground nano-strong :weight 'bold)
   (custom-visibility        :foreground nano-salient)
   (widget-button            :foreground nano-strong :weight 'bold)
   (widget-field             :background base2)
   (widget-single-line-field :background base2)

   ;; === Company tooltip ======================================================

   (company-scrollbar-bg                 :foreground bg :background nano-faded)
   (company-scrollbar-fg                 :foreground bg :background fg)
   (company-tooltip                      :background nano-subtle)
   (company-tooltip-annotation           :foreground fg)
   (company-tooltip-annotation-selection :background nano-salient)
   (company-tooltip-common               :foreground nano-strong :weight 'bold)
   (company-tooltip-common-selection     :foreground bg :background nano-salient :weight 'normal)
   (company-tooltip-mouse                :foreground bg :background nano-faded)
   (company-tooltip-scrollbar-thumb      :foreground bg :background fg)
   (company-tooltip-scrollbar-track      :foreground bg :foreground nano-faded)
   (company-tooltip-selection            :foreground bg :background nano-salient)

   ;; === Diff =================================================================

   (diff-header         :foreground nano-faded)
   (diff-file           :foreground nano-strong :weight 'bold)
   (diff-context        :foreground fg)
   (diff-removed        :foreground nano-faded)
   (diff-changed        :foreground nano-popout)
   (diff-added          :foreground nano-salient)
   (diff-refine-added   :foreground nano-salient :weight 'bold)
   (diff-refine-changed :foreground nano-popout)
   (diff-refine-removed :foreground nano-faded :strike-through t)

   ;; === Doom NANO modeline ===================================================

   (doom-nano-modeline-evil-emacs-state-face    :foreground bg :background nano-faded)
   (doom-nano-modeline-evil-insert-state-face   :foreground bg :background nano-popout)
   (doom-nano-modeline-evil-motion-state-face   :foreground bg :background nano-faded)
   (doom-nano-modeline-evil-normal-state-face   :foreground bg :background nano-faded)
   (doom-nano-modeline-evil-operator-state-face :foreground bg :background nano-faded)
   (doom-nano-modeline-evil-replace-state-face  :foreground bg :background nano-critical)
   (doom-nano-modeline-evil-visual-state-face   :foreground bg :background nano-salient)
   (doom-nano-modeline-inactive-face            :foreground nano-faded :background nano-highlight)

   ;; === Evil mode=============================================================

   (evil-snipe-first-match-face :background nano-highlight :weight 'bold)
   (evil-snipe-matches-face     :background nano-subtle)
   ;; === Helpful ==============================================================

   (helpful-heading :foreground nano-strong :weight 'bold)

   ;; === Highlight indent guides ==============================================

   (highlight-indent-guides-f)

   ;; === Hydra ================================================================

   (hydra-face-red :foreground nano-popout :weight 'bold)

   ;; === Line numbers =========================================================

   (line-number :foreground nano-faded)
   (line-number-current-line :foreground nil)
   (line-number-major-tick :foreground nano-faded)
   (line-number-minor-tick :foreground nano-faded)

   ;; === LSP ==================================================================

   (lsp-face-highlight-textual :background base1)

   ;; === Magit ================================================================

   (magit-bisect-bad                      :foreground fg)
   (magit-bisect-good                     :foreground fg)
   (magit-bisect-skip                     :foreground fg)
   (magit-blame-date                      :foreground fg)
   (magit-blame-dimmed                    :foreground fg)
   (magit-blame-hash                      :foreground nano-faded)
   (magit-blame-heading                   :background nano-subtle :weight 'bold)
   (magit-blame-highlight                 :background highlight)
   (magit-blame-margin                    :foreground fg)
   (magit-blame-name                      :foreground fg)
   (magit-blame-summary                   :foreground fg)
   (magit-branch-current                  :foreground nano-salient :weight 'bold)
   (magit-branch-local                    :foreground nano-salient)
   (magit-branch-remote                   :foreground nano-salient)
   (magit-branch-remote-head              :foreground nano-salient)
   (magit-branch-upstream                 :foreground nano-salient)
   (magit-cherry-equivalent               :foreground fg)
   (magit-cherry-unmatched                :foreground fg)
   (magit-diff-added                      :foreground nano-salient :weight 'bold)
   (magit-diff-added-highlight            :foreground nano-salient :weight 'bold)
   (magit-diff-base                       :foreground fg)
   (magit-diff-base-highlight             :background highlight)
   (magit-diff-conflict-heading           :background nano-subtle :weight 'bold)
   (magit-diff-context                    :foreground nano-faded)
   (magit-diff-context-highlight          :foreground nano-faded)
   (magit-diff-file-heading               :foreground nano-strong :weight 'bold)
   (magit-diff-file-heading-highlight     :background highlight :weight 'bold)
   (magit-diff-file-heading-selection     :foreground fg)
   (magit-diff-hunk-heading               :background nano-subtle)
   (magit-diff-hunk-heading-highlight     :foreground fg)
   (magit-diff-hunk-heading-selection     :foreground fg)
   (magit-diff-hunk-region                :foreground fg)
   (magit-diff-lines-boundary             :foreground fg)
   (magit-diff-lines-heading              :background nano-subtle :weight 'bold)
   (magit-diff-our                        :foreground fg)
   (magit-diff-our-highlight              :background highlight)
   (magit-diff-removed                    :foreground nano-popout :weight 'bold)
   (magit-diff-removed-highlight          :foreground nano-popout :weight 'bold)
   (magit-diff-revision-summary           :foreground nano-popout)
   (magit-diff-revision-summary-highlight :foreground fg)
   (magit-diff-their                      :foreground fg)
   (magit-diff-their-highlight            :background highlight)
   (magit-diff-whitespace-warning         :background nano-subtle)
   (magit-diffstat-added                  :foreground fg)
   (magit-diffstat-removed                :foreground fg)
   (magit-dimmed                          :foreground nano-faded)
   (magit-filename                        :foreground fg)
   (magit-hash                            :foreground nano-faded)
   (magit-head                            :foreground fg)
   (magit-header-line                     :foreground fg)
   (magit-header-line-key                 :foreground fg)
   (magit-header-line-log-select          :foreground fg)
   (magit-keyword                         :foreground nano-salient)
   (magit-keyword-squash                  :foreground nano-salient)
   (magit-log-author                      :foreground fg)
   (magit-log-date                        :foreground fg)
   (magit-log-graph                       :foreground fg)
   (magit-mode-line-process               :foreground fg)
   (magit-mode-line-process-error         :foreground nano-critical)
   (magit-process-ng                      :foreground fg)
   (magit-process-ok                      :foreground fg)
   (magit-reflog-amend                    :foreground fg)
   (magit-reflog-checkout                 :foreground fg)
   (magit-reflog-cherry-pick              :foreground fg)
   (magit-reflog-commit                   :foreground fg)
   (magit-reflog-merge                    :foreground fg)
   (magit-reflog-other                    :foreground fg)
   (magit-reflog-rebase                   :foreground fg)
   (magit-reflog-remote                   :foreground fg)
   (magit-reflog-reset                    :foreground fg)
   (magit-refname                         :foreground fg)
   (magit-refname-pullreq                 :foreground fg)
   (magit-refname-stash                   :foreground fg)
   (magit-refname-wip                     :foreground fg)
   (magit-section-heading                 :foreground nano-salient :weight 'bold)
   (magit-section-heading-selection       :foreground fg)
   (magit-section-highlight               :background highlight)
   (magit-section-secondary-heading       :foreground fg)
   (magit-sequence-done                   :foreground fg)
   (magit-sequence-drop                   :foreground fg)
   (magit-sequence-exec                   :foreground fg)
   (magit-sequence-head                   :foreground fg)
   (magit-sequence-onto                   :foreground fg)
   (magit-sequence-part                   :foreground fg)
   (magit-sequence-pick                   :foreground fg)
   (magit-sequence-stop                   :foreground fg)
   (magit-signature-bad                   :foreground fg)
   (magit-signature-error                 :foreground fg)
   (magit-signature-expired               :foreground fg)
   (magit-signature-expired-key           :foreground fg)
   (magit-signature-good                  :foreground fg)
   (magit-signature-revoked               :foreground fg)
   (magit-signature-untrusted             :foreground fg)
   (magit-tag                             :foreground nano-strong)



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
