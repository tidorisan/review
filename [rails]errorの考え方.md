---
title: "[rails]errorの考え方"
tags: "大事,error"
---

[基本]

### エラーの原因とその前後のurl controller などの流れを意識して問題箇所を見つける

-   rspec 読む　- specfileチェックする

-   ターミナルのエラー読む　

-   ブラウザでエラーの動作を確認する

\-　いちいち多くのエラーを写真取らない　ターミナル出力してあとで比べる

短時間でエラーに対して検討がつけるようにする

[rspec]

-   rspec の場合その文章読む

capybaraはチェックしてエラーを出しているのでカピバラ自体にエラーが存在する訳ではない.

赤文字　エラー場所　内容

青文字　rpsec をしているファイルの場所

# ./spec/system/books_spec.rb:78:in \`block (4 levels) in &lt;top (required)>'

![](2020-07-19-12-18-06.png)
