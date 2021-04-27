---
title: "form_forでの注意"
tags: "20200716,rails"
---

&lt;% form_for(@book) do |f| %>

&lt;% end %>

では子要素に

\_form.html.erbでform_forを使用しているため、

<form></form>を記述するとformを二重に定義してしまい
投稿編集フォームのボタンが発火しないということが起きます。
そのため、<form></form>は取り除く必要があります。
