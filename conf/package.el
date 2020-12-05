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
    atom-one-dark-theme
    anzu)
  "packages to be installed")

;; package自動インストール
(unless package-archive-contents (package-refresh-contents))
(dolist (pkg my-favorite-package-list)
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; キーマップの変更をかんたんにしてくれるパッケージ
(require 'bind-key)

;; undo,redoをまともにする
(require 'undo-tree)

;; 知らないやつ
(require 'anzu)
