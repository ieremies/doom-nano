(setq default-frame-alist
      (append (list
               '(min-height . 1)
               '(height     . 45)
               '(min-width  . 1)
               '(width      . 81)
               '(vertical-scroll-bars . nil)
               '(internal-border-width . 24)
               '(left-fringe    . 1)
               '(right-fringe   . 1)
               '(tool-bar-lines . 0)
               '(menu-bar-lines . 0))))

(setq inhibit-startup-screen 't
      inhibit-startup-message 't
      inhibit-startup-echo-area-message 't
      initial-scratch-message 'nil

      x-underline-at-descent-line 't

      ;; No ugly button for checkboxes
      widget-image-enable 'nil

      ;; Hide org markup
      org-hide-emphasis-markers 't

      scroll-bar-mode -1

      ;; Moderate font lock
      font-lock-maximum-decoration 'nil)

(setq-default line-spacing 1)

;; Minimum window height
(setq window-min-height 1)

;; Vertical window divider
(setq window-divider-default-right-width 24
      window-divider-default-places 'right-only)
(window-divider-mode 1)

(provide 'doom-nano-ui)
