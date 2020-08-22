---
title: "[rails][db]入力フォームを介さずにdbにdateを入れる方法"
tags: ""
---

# [結論]

1.  db/seedのファイルに入れたい値を記入する[テーブルに初期データを記入する]
2.  $ rake db:migrate
3.  rails c　してmodelのカラムを確認すると存在する

## [やり方]

    モデル名.create(:カラム名 => 値, :カラム名: => 値)
    # 一つのテーブルに１レコードを記入する

### [大量のデータの追加]

    回数.times do |no|
    	モデル名.create(:カラム名 => "値 #(no)")
    end

## [参考サイト]

[rake db:seedを使った初期データの投入](https://www.javadrive.jp/rails/model/index10.html)
