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
;; file provides some utilities to load and switch themes.

;;; Code:
(defvar angloid-themes-current-style nil)

;;;###autoload
(add-to-list 'custom-theme-load-path
             (file-name-directory load-file-name))

;;;###autoload
(defun angloid-themes-load-style (style)
  "Load Angloid theme variant STYLE.

Argument STYLE can be either 'light or 'dark."

  (interactive)
  (cond ((equal style 'light)
         (load-theme 'angloid-light t))
        ((equal style 'dark)
         (load-theme 'angloid-dark t))

        (t (error (format "Unknown Angloid theme style: %S" style)))))

;;;###autoload
(defun angloid-themes-switch-style ()
  "Toggle between the light and dark style of Angloid theme."
  (interactive)
  (cond ((or (null angloid-themes-current-style)
             (equal angloid-themes-current-style 'dark))
         (angloid-themes-load-style 'light)
         (setq angloid-themes-current-style 'light))
        ((equal angloid-themes-current-style 'light)
         (angloid-themes-load-style 'dark)
         (setq angloid-themes-current-style 'dark))
        (t (error (format "Invalid Angloid current style: %S"
                          angloid-themes-current-style)))))

(provide 'angloid-themes)

;;; angloid-themes.el ends here
