;; hook 用の関数の定義
(defun my-c-mode-common-hook ()
  ;; my-c-stye を有効にする
  ;(c-set-style "my-c-style")

  ;;   ;; 次のスタイルがデフォルトで用意されているので選択してもよい
  ;;   (c-set-style "gnu")
  ;;   (c-set-style "cc-mode")
  ;;   (c-set-style "stroustrup")
  ;;   (c-set-style "ellemtel")
  ;;   ;; 既存のスタイルを変更する場合は次のようにする
  ;;   (c-set-offset 'member-init-intro '++)

  (c-set-style "linux")

  ;; タブ長の設定
  (setq tab-width 4)

  ;; オフセットをタブ長と同じに
  (setq c-basic-offset tab-width)
  
  (setq c-tab-always-indent nil)
  (setq	c-argdecl-indent	     4)
  (setq	c-indent-level		     0)
  (setq	c-continued-statement-offset 4)
  (setq	c-continued-brace-offset    -4)

  (setq	c-brace-offset		     4)
  (setq	c-brace-imaginary-offset     4)
  (setq	c-label-offset		    -4)

  ;; タブでインデントするか？(nilならスペースでインデント)
  (setq indent-tabs-mode t)

  ;; 自動改行(auto-newline)を有効にする (C-c C-a)
  (c-toggle-auto-state t)

  ;; 連続する空白の一括削除(hungry-delete)を有効にする (C-c C-d)
  (c-toggle-hungry-state t)

  ;;   ;; セミコロンで自動改行しない
  (setq c-hanging-semi&comma-criteria nil)

  ;; キーバインドの追加
  ;; ------------------
  ;; C-m        改行＋インデント
  ;; C-c c      コンパイルコマンドの起動
  ;; C-h        空白の一括削除
   (define-key c-mode-base-map "\C-j" 'newline-and-indent)
   (define-key c-mode-base-map "\C-m" 'newline)
   (define-key c-mode-base-map "\C-cc" 'compile)
;  (define-key c-mode-base-map "\C-h" 'c-electric-backspace)

  ;;   ;; コンパイルコマンドの設定
  (setq compile-command "make -k 2>&1" )   ; GNU make
  ;;   (setq compile-command "nmake /NOLOGO /S") ; VC++ の nmake

) ;; my-c-mode-common-hook
