;; Requirements: 'M-x package-install solarized-theme'

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(load-theme 'solarized-dark t)

(custom-set-variables
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(menu-bar-mode nil))

(setq default-frame-alist
      '((left . 1200) (top . 200) (height . 60) (width . 100) ))

(setq-default tab-width 4)
