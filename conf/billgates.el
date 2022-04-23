;; windowsらしいundo,redo
(global-undo-tree-mode t)
;;(define-key global-map (kbd "C-z") 'undo-tree-undo)
;;(define-key global-map (kbd "C-y") 'undo-tree-redo)

;; windowsのクリップボードコピペ可にする
(setq x-select-enable-clipboard t)

;; パソコン初心者モード
(cua-mode t)
;; パソコン初心者モードでもさらに足りないキーバインドを変更
(bind-key* "C-a" 'mark-whole-buffer) ;; 全選択
(bind-key* "C-s" 'save-buffer) ;; 保存
(bind-key* "C-S-s" 'write-file) ;; 名前をつけて保存
(bind-key* "C-f" 'isearch-forward-regexp) ;; 検索(正規表現あり版)
(bind-key* "C-S-f" 'isearch-forward) ;; 検索(正規表現なし版)
(bind-key* "C-r" 'query-replace) ;; 置換
(bind-key* "C-n" 'find-file) ;; ファイル新規作成
(bind-key* "C-o" 'find-file) ;; ファイルを開く
(bind-key* [C-home] 'backward-page) ;; Ctrl+Home
(bind-key* [C-end] 'forward-page)   ;; Ctrl+end
(bind-key* [C-f4] 'save-buffers-kill-terminal) ;; 終了
(bind-key* "C-j" 'goto-line) ;; 指定行にジャンプ
(bind-key* "C-l" 'goto-last-change) ;; 検討中
(bind-key* "C-q" 'cua-set-rectangle-mark) ;; 矩形選択開始

;; 検索のとき、F3またはEnterで進む
;; Shift+F3またはShift+Enterで戻る
(define-key isearch-mode-map [S-return] 'isearch-repeat-backward)
(define-key isearch-mode-map [return] 'isearch-repeat-forward)
(define-key isearch-mode-map [S-f3] 'isearch-repeat-backward)
(define-key isearch-mode-map [f3] 'isearch-repeat-forward)
