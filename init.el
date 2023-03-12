(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-list
	  '(twilight-theme dockerfile-mode docker-compose-mode go-complete plantuml-mode typescript-mode web-mode))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(load-theme 'twilight t)

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(require 'docker-compose-mode)

(require 'go-mode)
(require 'plantuml-mode)

(global-display-line-numbers-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen nil)
 '(initial-scratch-message nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(web-mode plantuml-mode typescript-mode dockerfile-mode csharp-mode solarized-theme))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

(setq default-frame-alist
      '((left . 1200) (top . 200) (height . 60) (width . 100) ))

(setq-default tab-width 2)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun nuke-all-buffers ()
  (interactive)
  (mapcar 'kill-buffer (buffer-list))
  (delete-other-windows))

(global-set-key (kbd "C-x K") 'nuke-all-buffers)

; disable backup and auto-save
(setq backup-inhibited t)
(setq auto-save-default nil)

; word wrap
(global-visual-line-mode t)

; hide welcome screen
(setq inhibit-startup-screen t)

; use UTF-8 encoding
(define-coding-system-alias 'UTF-8 'utf-8)

; LF line endings
(setq-default buffer-file-coding-system 'utf-8-unix)

; font size
(set-face-attribute 'default nil :height 200)

; line limit ruler
(setq-default display-fill-column-indicator-column 120)
(add-hook 'go-mode-hook #'display-fill-column-indicator-mode)

; nuke all buffers
(defun nuke-all-buffers ()
  (interactive)
  (mapcar 'kill-buffer (buffer-list))
  (delete-other-windows))
(global-set-key (kbd "C-x K") 'nuke-all-buffers)

; auto update all buffers
(global-auto-revert-mode t)

