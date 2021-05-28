---
title: "[rails][db][migration]追加"
tags: ""
---

1.  元のファイルを編集

2.  新しいファイルを追加してそこに書く

3.  $rails 

4.  $ rails db:migrate:

    change [カラム名][テーブル名]\_migration.file
    そこのファイルで 

    def up
    	add_column :[テーブル名], :[カラム名], :[データ形], defalut: 0[false/true/" "]
    end
