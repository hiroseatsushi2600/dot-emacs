(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; 自動インストールするパッケージのリスト
(defvar my-favorite-package-list
  '(which-key
    bind-key
    undo-tree
    neotree
    atom-one-dark-theme
    doom-themes
    ;zenburn-theme
    smex
    json-mode
    haml-mode
    golint
    go-mode
    rust-mode
    editorconfig
    anzu)
  "packages to be installed")

;; package自動インストール
(unless package-archive-contents (package-refresh-contents))
(dolist (pkg my-favorite-package-list)
  (unless (package-installed-p pkg)
    (package-install pkg)))

(require 'bind-key)
(require 'undo-tree)
(require 'anzu)
(require 'neotree)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; neotree
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)
(bind-key "C-e" 'neotree-toggle)
(bind-key "RET" 'neotree-enter-hide neotree-mode-map)
(bind-key "a" 'neotree-hidden-file-toggle neotree-mode-map)
(bind-key "<left>" 'neotree-select-up-node neotree-mode-map)
(bind-key "<right>" 'neotree-change-root neotree-mode-map)
;; neotree でファイルを新規作成した後、自動的にファイルを開く
(setq neo-create-file-auto-open t)
;; delete-other-window で neotree ウィンドウを消さない
(setq neo-persist-show t)
;; neotree ウィンドウを表示する毎に current file のあるディレクトリを表示する
(setq neo-smart-open t)
