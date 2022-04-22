(add-to-list 'load-path "~/.emacs.d/conf")

(load "init-package.el")
(load "basic.el")
(load "billgates.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(anzu editorconfig rust-mode go-mode golint haml-mode json-mode smex doom-themes atom-one-dark-theme undo-tree bind-key which-key)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
