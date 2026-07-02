;;; astral-blackhole-theme.el --- warm star-glow falling into deep space -*- lexical-binding: t; -*-

;; Author: kmf
;; URL: https://github.com/kmf/astral-journey
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.1"))

;;; Commentary:
;; Deep-space base with warm star-glow accents.
;; Part of the Astral Journey colorscheme.

;;; Code:

(deftheme astral-blackhole "warm star-glow falling into deep space.")

(let ((bg       "#0d0f1e")
      (bg-soft  "#14172a")
      (bg-hi    "#1c2038")
      (border   "#2a2f4d")
      (fg       "#ebe8d2")
      (fg-alt   "#fdfbe4")
      (fg-muted "#767ba6")
      (yellow   "#ffcc66")
      (orange   "#ff9933")
      (red      "#ff6e6e")
      (magenta  "#cc99cc")
      (violet   "#b78ae0")
      (blue     "#6a97ea")
      (teal     "#38a8d0")
      (green    "#7ed4a3")
      (br-red     "#ff8a80")
      (br-green   "#98e0ba")
      (br-yellow  "#ffff99")
      (br-blue    "#99ccff")
      (br-magenta "#d9a9e0")
      (br-teal    "#5cc0e0")
      (br-orange  "#ffcc99")
      (br-violet  "#99ccff")
      (diff-add "#1d2b31")
      (diff-del "#2f1c29")
      (diff-chg "#2f2928"))

  (custom-theme-set-faces
   'astral-blackhole

   ;; --- UI ---
   `(default                ((t (:foreground ,fg :background ,bg))))
   `(cursor                 ((t (:background ,yellow))))
   `(region                 ((t (:background ,bg-hi))))
   `(highlight              ((t (:background ,bg-hi))))
   `(hl-line                ((t (:background ,bg-soft))))
   `(fringe                 ((t (:background ,bg))))
   `(vertical-border        ((t (:foreground ,border))))
   `(border                 ((t (:foreground ,border))))
   `(window-divider         ((t (:foreground ,border))))
   `(minibuffer-prompt      ((t (:foreground ,yellow :bold t))))
   `(line-number            ((t (:foreground ,border))))
   `(line-number-current-line ((t (:foreground ,yellow :bold t))))
   `(shadow                 ((t (:foreground ,fg-muted))))
   `(link                   ((t (:foreground ,blue :underline t))))
   `(link-visited           ((t (:foreground ,violet :underline t))))
   `(error                  ((t (:foreground ,red :bold t))))
   `(warning                ((t (:foreground ,orange))))
   `(success                ((t (:foreground ,green))))
   `(match                  ((t (:foreground ,bg :background ,yellow))))
   `(isearch                ((t (:foreground ,bg :background ,orange))))
   `(lazy-highlight         ((t (:background ,bg-hi))))
   `(trailing-whitespace    ((t (:background ,red))))
   `(secondary-selection    ((t (:background ,bg-hi))))

   ;; --- Mode line ---
   `(mode-line              ((t (:foreground ,fg :background ,bg-soft :box (:line-width 1 :color ,border)))))
   `(mode-line-inactive     ((t (:foreground ,fg-muted :background ,bg-soft :box (:line-width 1 :color ,border)))))
   `(mode-line-emphasis     ((t (:foreground ,yellow :bold t))))
   `(mode-line-buffer-id    ((t (:foreground ,yellow :bold t))))

   ;; --- Completions ---
   `(completions-common-part    ((t (:foreground ,blue :bold t))))
   `(completions-first-difference ((t (:foreground ,yellow))))

   ;; --- Diff ---
   `(diff-added             ((t (:background ,diff-add))))
   `(diff-removed           ((t (:background ,diff-del))))
   `(diff-changed           ((t (:background ,diff-chg))))
   `(diff-header            ((t (:foreground ,blue :bold t))))
   `(diff-file-header       ((t (:foreground ,yellow :bold t))))

   ;; --- Font lock (syntax) ---
   `(font-lock-comment-face           ((t (:foreground ,fg-muted :italic t))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,fg-muted :italic t))))
   `(font-lock-doc-face               ((t (:foreground ,fg-muted :italic t))))
   `(font-lock-string-face            ((t (:foreground ,green))))
   `(font-lock-keyword-face           ((t (:foreground ,red))))
   `(font-lock-builtin-face           ((t (:foreground ,blue))))
   `(font-lock-function-name-face     ((t (:foreground ,blue))))
   `(font-lock-variable-name-face     ((t (:foreground ,fg))))
   `(font-lock-type-face              ((t (:foreground ,violet))))
   `(font-lock-constant-face          ((t (:foreground ,orange))))
   `(font-lock-number-face            ((t (:foreground ,teal))))
   `(font-lock-warning-face           ((t (:foreground ,orange :bold t))))
   `(font-lock-negation-char-face     ((t (:foreground ,red))))
   `(font-lock-preprocessor-face      ((t (:foreground ,magenta))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,magenta))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,magenta))))

   ;; --- Org mode ---
   `(org-level-1            ((t (:foreground ,yellow :bold t))))
   `(org-level-2            ((t (:foreground ,blue))))
   `(org-level-3            ((t (:foreground ,violet))))
   `(org-level-4            ((t (:foreground ,teal))))
   `(org-level-5            ((t (:foreground ,green))))
   `(org-level-6            ((t (:foreground ,orange))))
   `(org-level-7            ((t (:foreground ,magenta))))
   `(org-level-8            ((t (:foreground ,fg-muted))))
   `(org-todo               ((t (:foreground ,red :bold t))))
   `(org-done               ((t (:foreground ,green :bold t))))
   `(org-headline-done      ((t (:foreground ,fg-muted))))
   `(org-link               ((t (:foreground ,blue :underline t))))
   `(org-code               ((t (:foreground ,green))))
   `(org-verbatim           ((t (:foreground ,teal))))
   `(org-date               ((t (:foreground ,teal :underline t))))
   `(org-block              ((t (:background ,bg-soft))))
   `(org-block-begin-line   ((t (:foreground ,fg-muted :background ,bg-soft))))
   `(org-block-end-line     ((t (:foreground ,fg-muted :background ,bg-soft))))

   ;; --- Markdown ---
   `(markdown-header-face-1 ((t (:foreground ,yellow :bold t))))
   `(markdown-header-face-2 ((t (:foreground ,blue :bold t))))
   `(markdown-header-face-3 ((t (:foreground ,violet :bold t))))
   `(markdown-code-face     ((t (:foreground ,green))))
   `(markdown-link-face     ((t (:foreground ,blue))))
   `(markdown-url-face      ((t (:foreground ,teal :underline t))))
   `(markdown-inline-code-face ((t (:foreground ,green :background ,bg-soft))))

   ;; --- Show paren ---
   `(show-paren-match       ((t (:foreground ,yellow :background ,bg-hi :bold t))))
   `(show-paren-mismatch    ((t (:foreground ,bg :background ,red :bold t))))

   ;; --- Flycheck / Flymake ---
   `(flycheck-error         ((t (:underline (:style wave :color ,red)))))
   `(flycheck-warning       ((t (:underline (:style wave :color ,orange)))))
   `(flycheck-info          ((t (:underline (:style wave :color ,blue)))))
   `(flymake-error          ((t (:underline (:style wave :color ,red)))))
   `(flymake-warning        ((t (:underline (:style wave :color ,orange)))))
   `(flymake-note           ((t (:underline (:style wave :color ,blue)))))

   ;; --- Company ---
   `(company-tooltip            ((t (:foreground ,fg :background ,bg-soft))))
   `(company-tooltip-selection  ((t (:background ,bg-hi))))
   `(company-tooltip-common     ((t (:foreground ,blue :bold t))))
   `(company-scrollbar-bg       ((t (:background ,bg-hi))))
   `(company-scrollbar-fg       ((t (:background ,border))))

   ;; --- Which-key ---
   `(which-key-key-face          ((t (:foreground ,yellow))))
   `(which-key-group-description-face ((t (:foreground ,blue))))
   `(which-key-command-description-face ((t (:foreground ,fg))))
   `(which-key-separator-face    ((t (:foreground ,fg-muted))))

   ;; --- Magit ---
   `(magit-section-heading       ((t (:foreground ,yellow :bold t))))
   `(magit-branch-local          ((t (:foreground ,blue))))
   `(magit-branch-remote         ((t (:foreground ,green))))
   `(magit-diff-added            ((t (:foreground ,green :background ,diff-add))))
   `(magit-diff-removed          ((t (:foreground ,red :background ,diff-del))))
   `(magit-diff-context          ((t (:foreground ,fg-muted))))
   `(magit-diff-hunk-heading     ((t (:foreground ,fg :background ,bg-hi))))
   ))

(provide-theme 'astral-blackhole)

;;; astral-blackhole-theme.el ends here
