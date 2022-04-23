(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; 謎エラー error: Package ‘undo-tree-’ is unavailable の暫定対応
;; バグ？よくわかんねー 
;; disable because of elpa bug in emacs 27.1
;; Hopefully the bug will be fixed in next release.
(setq package-check-signature nil)
;; こちらの手法もありそうだがとりあえず使わない
;;This looks like a consequence of this emacs bug: https://debbugs.gnu.org/cgi/bugreport.cgi?bug=34341
;;If you are seeing this issue, adding this temporary fix at the beginning of init.el may help:
;;(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; 自動インストールするパッケージのリスト
(defvar my-favorite-package-list
  '(which-key
    bind-key
    undo-tree
    atom-one-dark-theme
    doom-themes
    smex
    json-mode
    haml-mode
    golint
    go-mode
    rust-mode
    editorconfig
    neotree
    twittering-mode
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
(require 'twittering-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; neotree
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(bind-key* "C-e" 'neotree-toggle)
(bind-key "RET" 'neotree-enter-hide neotree-mode-map)
(bind-key "a" 'neotree-hidden-file-toggle neotree-mode-map)
(bind-key "<left>" 'neotree-select-up-node neotree-mode-map)
(bind-key "<right>" 'neotree-change-root neotree-mode-map)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; twittering-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 事前準備
; opensslをインストール.path環境変数へ追加.
; curlをインストール
; openPGPをインストール.https://www.gpg4win.de/より.

;; マスターパスワードを使う
(setq twittering-use-master-password t)

