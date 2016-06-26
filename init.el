;; Cask / Pallet
(require 'cask "/usr/local/Cellar/cask/0.7.4/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)
(add-to-list 'load-path "~/.emacs.d/custom")
;;(add-to-list 'load-path "~/.emacs.d/other_paths")


;;(load "00common-setup.el")
(load "01ruby.el")
(load "02org.el")
(load "03auto-complete.el")

;; --------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (adwaita)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;========== Look & feel customization ==========
(set-default-font
 "-*-Ubuntu Mono-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1")

;; Hide splash screen and banner
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; Add line numbers
(global-linum-mode 1)

;; Add directory to custom-theme-load-path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Custom themes
(load-theme 'adwaita t)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; Indent automagically
(define-key global-map (kbd "RET") 'newline-and-indent)
