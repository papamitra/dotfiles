
;; !!!!! TODO: うまく動かない 要修正 !!!!!

;; helm-source-locate でワードの and 検索ができるようにする
;; ・locate を使えない場合は、「locate ''」の部分を「cat ~/tmp/all.filelist」に置き換えてください。
;; 　そして、find 等を使って all.filelist（ファイル名が並んだファイル）を作成してください。
;; ・検索の高速化のために、検索件数を helm-candidate-number-limit までに head コマンドで絞っています。
;; 　helm-source-locate情報源 の candidate-number-limit設定値 を設定する方法もあります。
;; 　（後半の helm-before-initialize-hook の箇所でコメント化している部分となります。）
(setq helm-candidate-number-limit 100)
(setq helm-locate-command
      (concat "locate_case=$(echo '%s' | sed 's/-//'); locate '' |"
              "perl -ne \"$(echo %s | sed -r 's/^ +//' |"
                           "sed -r 's/ +$//' |"
                           "sed 's_/_\\\\/_g' |"
                           "sed -r 's_ +_/'$locate_case' \\&\\& /_g' |"
                           "sed 's_.*_$| = 1; print if (/&/'$locate_case')_')\" |"
                           "head -n " (number-to-string helm-candidate-number-limit)))
