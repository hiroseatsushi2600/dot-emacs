(add-to-list 'load-path "~/.emacs.d/conf")

(load "package.el")
(load "basic.el")
(load "billgates.el")
(load "superhakaa.el")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "HackGen" :foundry "outline" :slant normal :weight normal :height 100 :width normal))))
 '(hl-line ((t (:background "color-236")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
