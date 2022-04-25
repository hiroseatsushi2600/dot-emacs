;; language
(set-language-environment 'Japanese)
(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; theme
(load-theme 'atom-one-dark t)
;(load-theme 'doom-dracula t)

;; font
(setq default-frame-alist
      (append (list
              '(font . "HackGenNerd-12"))
              default-frame-alist))
;; 画面サイズ
(set-frame-size (selected-frame) 224 52)


;; お静かに
(setq ring-bell-function 'ignore)

;; スタートアップメッセージを表示させない
(setq inhibit-startup-message t)

;; メニューバーの非表示
;(menu-bar-mode -1)      ;やっぱ素人なのでメニューバーは必要だよ(^p^)

;; ツールバーの非表示. ターミナル版だとtool-bar-modeないらしいので回避.
(if (functionp 'tool-bar-mode) (tool-bar-mode 0))

;; ウィンドウを透明にする
;(add-to-list 'default-frame-alist '(alpha . (0.85 0.85)))

;; 行数を表示する
(global-linum-mode t)
(setq linum-format "%d ")    ;行番号後ろにスペース

;; 列数を表示する
(column-number-mode t)

;; カーソル行をハイライトする
(global-hl-line-mode t)

;; スペース、タブなどを可視化する
;(global-whitespace-mode 1)

(show-paren-mode t)                       ; 対応する括弧をハイライト
(setq show-paren-style 'mixed)            ; 括弧のハイライトの設定 (parenthesis/expression/mixed)
(transient-mark-mode t)                   ; 選択範囲をハイライト

;; indent when entering 改行時インデントする
(electric-indent-mode t)

;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; 改行コードを表示する
(setq eol-mnemonic-unix "(LF)")
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")

;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)

;; 単語を検索した時に何番目のマッチかを表示
(global-anzu-mode +1)
;; 入力に 100個以上マッチする場合はそれ以上数え上げを行わない
(setq anzu-search-threshold 100)

;;BackSpaceを有効に(isearch時にも効くように)
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

;; 折り返し表示ON/OFF
(setq truncate-lines t)
(defun toggle-truncate-lines ()
  "折り返し表示をトグル動作します."
  (interactive)
  (if truncate-lines
      (setq truncate-lines nil)
    (setq truncate-lines t))
  (recenter))
(global-set-key (kbd "C-x C-t") 'toggle-truncate-lines)

;; Ctrl + T でウインドウ切り替え
(global-set-key (kbd "C-t") (lambda ()
                              (interactive)
                              (other-window 1)))

