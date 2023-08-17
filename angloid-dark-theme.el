;;; angloid-themes.el --- Custom theme inspired by the Flat UI palette
;;
;; FlucUI code (from which this theme was derived): Copyright (C) 2018 MetroWind.
;;
;; This program is free software. It comes without any warranty, to
;; the extent permitted by applicable law. You can redistribute it
;; and/or modify it under the terms of the Do What the Fuck You Want
;; to Public License, Version 2, as published by Sam Hocevar. See
;; http://www.wtfpl.net/ for more details.

;; Author: Jacob Walchuk <walchuk2018@icloud.com>
;; URL: https://github.com/yaqubroli/angloid-theme
;; Keywords: lisp
;; Version: 1.0
;; Package-Requires: ((emacs "24"))

;;; Commentary:
;;
;; Fluc UI theme is a custom theme for Emacs, inspired by
;; http://flatuicolors.com. It Has both light and dark variants. This
;; file provides dark variant.

;;; Code:

;; Note: for every face that is customized here, a customization for
;; it should be also provided in the light version. Otherwise it could
;; be ugly when switching bwteen styles

(deftheme angloid-dark
  "Inspired by the color scheme from flatuicolors.com.")

;; Colors
(let*
    ((angloid-protoss-pylon "#00a8ff")
     (angloid-periwinkle "#9c88ff")
     (angloid-rise-n-shine "#fbc531")
     (angloid-download-progress "#4cd137")
     (angloid-seabrook "#487eb0")
     (angloid-vanadyl-blue "#0097e6")
     (angloid-matt-purple "#8c7ae6")
     (angloid-nanohanacha-gold "#e1b12c")
     (angloid-skirret-green "#44bd32")
     (angloid-naval "#40739e")
     (angloid-nasturcian-flower "#e84118")
     (angloid-lynx-white "#f5f6fa")
     (angloid-blueberry-soda "#7f8fa6")
     (angloid-mazarine-blue "#273c75")
     (angloid-blue-night "#353b48")
     (angloid-harley-davidson-orange "#c23616")
     (angloid-hint-of-pensive "#dcdde1")
     (angloid-chain-gang-grey "#718093")
     (angloid-pico-void "#192a56")
     (angloid-electromagnetic "#2f3640")
     (angloid-grey-900 "#212121")

     (fui-turquoise angloid-protoss-pylon)
     (fui-emerald angloid-download-progress)
     (fui-river angloid-vanadyl-blue)
     (fui-amethyst angloid-periwinkle)
     (fui-deep-asphalt angloid-grey-900)
     (fui-asphalt angloid-chain-gang-grey)
     (fui-sunflower angloid-rise-n-shine)
     (fui-carrot angloid-nasturcian-flower)
     (fui-alizarin angloid-nasturcian-flower)
     (fui-clouds angloid-lynx-white)
     (fui-concrete angloid-blueberry-soda)
     (fui-dark-turquoise angloid-seabrook)
     (fui-dark-emerald angloid-skirret-green)
     (fui-dark-river angloid-naval)
     (fui-dark-amethyst angloid-matt-purple)
     (fui-dark-asphalt angloid-blue-night)
     (fui-dark-sunflower angloid-nanohanacha-gold)
     (fui-dark-carrot angloid-harley-davidson-orange)
     (fui-dark-alizarin angloid-harley-davidson-orange)
     (fui-dark-clouds angloid-electromagnetic)
     (fui-deep-clouds angloid-hint-of-pensive)
     (fui-dark-concrete angloid-blueberry-soda)
     
     (fui-bg angloid-grey-900)
     (fui-fg angloid-lynx-white))

  (custom-theme-set-faces
   'angloid-dark
   `(default ((t (:background ,fui-bg
                  :foreground ,fui-fg))))
   `(cursor ((t (:background ,fui-carrot
                 :foreground ,fui-fg))))
   `(region ((t (:background ,fui-dark-sunflower
                 :foreground ,fui-bg))))
   `(mode-line ((t (:background ,fui-asphalt
                    :foreground ,fui-fg
                    :box nil))))
   `(mode-line-buffer-id ((t (:foreground ,fui-fg))))
   `(mode-line-inactive ((t (:background ,fui-bg
                             :foreground ,fui-fg))))
   `(fringe ((t (:background ,fui-bg))))
   `(minibuffer-prompt ((t (:inherit italic :foreground ,fui-dark-concrete))))
   `(font-lock-builtin-face ((t (:foreground ,fui-deep-clouds))))
   `(font-lock-comment-face ((t (:inherit italic :foreground ,fui-dark-concrete))))
   `(font-lock-constant-face ((t (:inherit italic :foreground ,fui-deep-clouds))))
   `(font-lock-function-name-face ((t (:foreground ,fui-sunflower))))
   `(font-lock-keyword-face ((t (:foreground ,fui-deep-clouds :inherit italic))))
   `(font-lock-string-face ((t (:foreground ,fui-turquoise))))
   `(font-lock-type-face ((t (:foreground ,fui-emerald))))
   `(font-lock-variable-name-face ((t (:foreground ,fui-river))))
   `(font-lock-warning-face ((t (:foreground ,fui-dark-carrot))))
   `(isearch ((t (:background ,fui-dark-concrete
                  :foreground ,fui-fg))))
   `(lazy-highlight ((t (:background ,fui-concrete))))
   `(link ((t (:foreground ,fui-river :underline t))))
   `(link-visited ((t (:foreground ,fui-dark-concrete :underline t))))
   `(button ((t (:background ,fui-bg :underline t :foreground nil))))
   `(header-line ((t (:background ,fui-asphalt
                      :foreground ,fui-fg))))
   `(shadow ((t (:foreground ,fui-dark-concrete))))
   `(show-paren-match ((t (:background ,fui-emerald :foreground ,fui-bg))))
   `(show-paren-mismatch ((t (:background ,fui-alizarin
                              :foreground ,fui-bg))))
   `(highlight ((t (:inverse-video nil :background ,fui-asphalt))))
   `(hl-line ((t (:inverse-video nil :background ,fui-asphalt))))
   `(widget-field ((t (:background ,fui-dark-concrete))))

   ;; Face for specific prog modes
   `(sh-heredoc ((t (:foreground nil :inherit font-lock-string-face))))

   ;; Dired
   `(dired-directory ((t (:foreground ,fui-river))))
   `(dired-symlink ((t (:foreground ,fui-turquoise))))
   `(dired-perm-write ((t (:foreground ,fui-dark-carrot))))

   ;; Diff
   `(diff-added ((t (:foreground ,fui-turquoise))))
   `(diff-removed ((t (:foreground ,fui-alizarin))))
   ;; `(diff-context ((t (:inherit default))))
   `(diff-file-header ((t (:bold t :background ,fui-asphalt :weight bold :foreground ,fui-clouds))))
   `(diff-header ((t (:foreground ,fui-concrete :background ,fui-bg))))

   ;; Whitespace
   `(whitespace-trailing ((t (:background ,fui-asphalt))))
   `(whitespace-line ((t (:background ,fui-asphalt :foreground ,fui-fg))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,fui-river
                          :weight unspecified))))
   `(erc-header-line ((t (:background ,fui-asphalt))))
   `(erc-timestamp-face ((t (:foreground ,fui-dark-concrete
                             :weight unspecified))))
   `(erc-current-nick-face ((t (:foreground ,fui-sunflower
                                :weight unspecified))))
   `(erc-input-face ((t (:foreground ,fui-fg))))
   `(erc-prompt-face ((t (:foreground ,fui-dark-concrete
                          :background nil
                          :inherit italic
                          :weight unspecified))))
   `(erc-my-nick-face ((t (:foreground ,fui-sunflower))))
   `(erc-pal-face ((t (:foreground ,fui-emerald))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,fui-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,fui-river))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,fui-carrot))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,fui-amethyst))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,fui-sunflower))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,fui-emerald))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,fui-concrete))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,fui-alizarin))))

   ;; Magit
   `(magit-branch-local ((t (:foreground ,fui-river :background nil))))
   `(magit-branch-remote ((t (:foreground ,fui-emerald :background nil))))
   `(magit-tag ((t (:foreground ,fui-river :background ,fui-bg))))
   `(magit-hash ((t (:foreground ,fui-concrete))))
   `(magit-section-title ((t (:foreground ,fui-dark-emerald :background ,fui-bg))))
   `(magit-section-heading ((t (:background ,fui-asphalt :foreground ,fui-fg))))
   `(magit-section-highlight ((t (:background ,fui-asphalt))))
   `(magit-item-highlight ((t (:foreground ,fui-fg :background ,fui-deep-clouds))))
   `(magit-log-author ((t (:foreground ,fui-sunflower))))
   `(magit-diff-added ((t (:inherit diff-added))))
   `(magit-diff-added-highlight ((t (:inherit magit-diff-added))))
   `(magit-diff-removed ((t (:inherit diff-removed))))
   `(magit-diff-removed-highlight ((t (:inherit magit-diff-removed))))
   `(magit-diff-context ((t (:inherit diff-context))))
   `(magit-diff-context-highlight ((t (:inherit magit-diff-context))))

   ;; Git-gutter-fringe
   `(git-gutter-fr:modified ((t (:foreground ,fui-sunflower))))
   `(git-gutter-fr:added ((t (:foreground ,fui-emerald))))
   `(git-gutter-fr:deleted ((t (:foreground ,fui-alizarin))))

   ;; Company
   `(company-preview ((t (:foreground ,fui-fg :background ,fui-sunflower))))
   `(company-preview-common ((t (:foreground ,fui-fg :background ,fui-carrot))))
   `(company-tooltip ((t (:foreground ,fui-fg :background ,fui-asphalt))))
   `(company-tooltip-common ((t (:foreground ,fui-sunflower))))
   `(company-tooltip-selection ((t (:background ,fui-deep-asphalt))))
   `(company-tooltip-common-selection ((t (:foreground ,fui-sunflower))))
   `(company-tooltip-annotation ((t (:foreground ,fui-emerald))))
   `(company-scrollbar-bg ((t (:background ,fui-bg))))
   `(company-scrollbar-fg ((t (:background ,fui-asphalt))))

   ;; Cperl
   `(cperl-array-face ((t (:weight bold :inherit font-lock-variable-name-face))))
   `(cperl-hash-face ((t (:weight bold :inherit (italic font-lock-variable-name-face)))))
   `(cperl-nonoverridable-face ((t (:inherit font-lock-builtin-face))))

   ;; Powerline
   `(mode-line ((t (:box nil))))
   `(powerline-active2 ((t (:foreground ,fui-fg :background ,fui-dark-clouds))))
   `(powerline-active1 ((t (:foreground ,fui-bg :background ,fui-emerald))))
   `(powerline-inactive2 ((t (:foreground ,fui-bg :background ,fui-concrete))))
   `(powerline-inactive1 ((t (:foreground ,fui-fg :background ,fui-dark-clouds))))

   ;; Smart mode line
   `(sml/global  ((t (:foreground ,fui-fg))))
   `(sml/charging ((t (:foreground ,fui-emerald))))
   `(sml/discharging ((t (:foreground ,fui-dark-alizarin))))
   `(sml/read-only ((t (:foreground ,fui-dark-emerald))))
   `(sml/filename ((t (:foreground ,fui-turquoise))))
   `(sml/prefix ((t (:foreground ,fui-amethyst :weight normal :inherit italic))))
   `(sml/modes ((t (:foreground ,fui-fg :weight bold))))
   `(sml/modified ((t (:foreground ,fui-alizarin))))
   `(sml/outside-modified ((t (:foreground ,fui-bg :background ,fui-alizarin))))
   `(sml/position-percentage ((t (:foreground ,fui-river :slant normal))))

   ;; Helm
   `(helm-candidate-number ((t (:foreground ,fui-fg :background nil))))
   `(helm-source-header ((t (:foreground ,fui-fg :background ,fui-asphalt
                                         :weight normal :inherit italic))))
   `(helm-selection ((t (:background ,fui-dark-sunflower :foreground ,fui-bg))))
   `(helm-prefarg ((t (:foreground ,fui-dark-alizarin))))
   `(helm-ff-directory ((t (:foreground ,fui-river))))
   `(helm-ff-executable ((t (:foreground ,fui-emerald))))
   `(helm-ff-invalid-symlink ((t (:foreground ,fui-bg :background ,fui-dark-alizarin))))
   `(helm-ff-symlink ((t (:foreground ,fui-amethyst))))
   `(helm-ff-prefix ((t (:background ,fui-sunflower))))
   `(helm-ff-dotted-directory ((t (:background nil :foreground ,fui-dark-concrete))))
   `(helm-M-x-key ((t (:foreground ,fui-dark-emerald))))
   `(helm-buffer-file ((t (:foreground ,fui-fg))))
   `(helm-buffer-archive ((t (:inherit helm-buffer-file))))
   `(helm-buffer-directory ((t (:foreground ,fui-river :background nil))))
   `(helm-buffer-not-saved ((t (:foreground ,fui-dark-alizarin))))
   `(helm-buffer-modified ((t (:foreground ,fui-carrot))))
   `(helm-buffer-process ((t (:foreground ,fui-dark-emerald))))
   `(helm-buffer-size ((t (:foreground ,fui-dark-concrete))))
   `(helm-ff-file ((t (:inherit default))))

   ;; TeX
   `(font-latex-sedate-face ((t (:foreground ,fui-river))))
   `(font-latex-math-face ((t (:foreground ,fui-turquoise))))
   `(font-latex-script-char-face ((t (:inherit font-latex-math-face))))

   ;; adoc-mode
   `(markup-meta-hide-face ((t (:height 1.0 :foreground ,fui-fg))))
   `(markup-meta-face ((t (:height 1.0 :foreground ,fui-fg :family nil))))
   `(markup-reference-face ((t (:underline nil :foreground ,fui-river))))
   `(markup-gen-face ((t (:foreground ,fui-emerald))))
   `(markup-passthrough-face ((t (:inherit markup-gen-face))))
   `(markup-replacement-face ((t (:family nil :foreground ,fui-amethyst))))
   `(markup-list-face ((t (:weight bold))))
   `(markup-secondary-text-face ((t (:height 1.0 :foreground ,fui-emerald))))
   `(markup-verbatim-face ((t (:foreground ,fui-concrete))))
   `(markup-typewriter-face ((t (:inherit nil))))
   `(markup-title-0-face ((t (:height 1.2 :inherit markup-gen-face))))
   `(markup-title-1-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-2-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-3-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-4-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-5-face ((t (:height 1.0 :inherit markup-gen-face))))

   ;; Org-mode
   `(org-hide ((t (:foreground ,fui-bg))))
   `(org-table ((t (:foreground ,fui-fg))))
   `(org-date ((t (:foreground ,fui-emerald))))
   `(org-done ((t (:weight normal :foreground ,fui-dark-concrete))))
   `(org-todo ((t (:weight normal :foreground ,fui-carrot))))
   `(org-latex-and-related ((t (:foreground ,fui-concrete :italic t))))
   `(org-checkbox ((t (:weight normal :foreground ,fui-concrete))))
   `(org-mode-line-clock ((t (:background nil))))
   `(org-document-title ((t (:weight normal :foreground nil))))

   ;; org-tree-slide
   `(org-tree-slide-header-overlay-face
     ((t (:inherit font-lock-comment-face :foreground nil :background nil))))

   ;; Message
   `(message-header-name ((t (:foreground ,fui-concrete))))
   `(message-header-other ((t (:foreground ,fui-fg))))
   `(message-header-cc ((t (:inherit message-header-other))))
   `(message-header-newsgroups ((t (:inherit message-header-other))))
   `(message-header-xheader ((t (:inherit message-header-other))))
   `(message-header-subject ((t (:foreground ,fui-emerald))))
   `(message-header-to ((t (:foreground ,fui-river))))
   `(message-mml ((t (:foreground ,fui-dark-concrete))))

   ;; Notmuch
   `(notmuch-search-unread-face ((t (:foreground ,fui-river))))
   `(notmuch-tag-face ((t (:foreground ,fui-emerald))))
   `(notmuch-tree-match-author-face ((t (:foreground ,fui-river))))
   `(notmuch-tree-no-match-face ((t (:foreground ,fui-concrete))))
   `(notmuch-tree-match-tag-face ((t (:inherit notmuch-tree-match-author-face))))
   `(notmuch-tag-unread-face ((t (:foreground ,fui-carrot))))
   `(notmuch-message-summary-face ((t (:foreground ,fui-concrete))))

   ;; Highlight-indent-guides
   `(highlight-indent-guides-odd-face ((t (:background ,fui-deep-asphalt))))
   `(highlight-indent-guides-even-face ((t (:background nil))))

   ;; Telega
   `(telega-msg-heading ((t (:background nil :foreground ,fui-emerald :inherit nil))))
   `(telega-msg-inline-reply ((t (:foreground ,fui-dark-concrete :inherit nil))))
   `(telega-entity-type-texturl ((t (:inherit nil :foreground ,fui-river))))
   ))

(provide-theme 'angloid-dark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; angloid-dark-theme.el ends here
