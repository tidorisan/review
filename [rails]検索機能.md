---
title: "[rails]検索機能"
tags: ""
---

[Ransackのススメ](https://qiita.com/nysalor/items/9a95d91f2b97a08b96b0)

Item.search(:name_cont => 'ほげ').result

モデル名.searchメソッド(:カラム名＿述語　=> "").resultメソッド[これで検索してきた値を返す]
wheremeメソッド[あるモデルのあるカラムの値が””なもの該当するもの全て取得する]に類似している。
