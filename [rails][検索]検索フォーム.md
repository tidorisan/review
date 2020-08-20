---
title: "[rails][検索]検索フォーム"
tags: ""
---

[イメージ_MVC]

詳細ページを表示する処理をベースとしてイメージする。

dbにカラムと値を指定して該当するものを取得しているが、そのでの検索を入力フォームから渡された値を利用して検索を行う。

1.  view[入力フォーム：検索キーワード入力]　＝＞ 
2.  controller\[viewから渡された値を受け取って検索かける[どのモデルのどの値]]＝＞
3.  検索内容をviewに表示する

-   [V=>C/M=>V ]

[やること]

1.  view検索フォーム制作

form_with[値を渡すのみでモデル使用しない]

&lt;%= form_with (url; book_sarch_path, metod: get, local: true ) do |f| %>

&lt;% end %>

2.  controller指定


3.  検索内容をviewに表示する
