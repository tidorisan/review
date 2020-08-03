---
title: "[rails][form_for]ラジオボタンの実装"
tags: ""
---

[前提]

入力フォームのviewを弄るので、modelやcontrollerなどは既に作成してある状態であること

-   入力フォームでの作業

\-　使うテーブルはマスタ項目などでパターンが２つでユーザーのアクションなどで頻繁に増えないことが条件[３つになるとこれは使え無い]

[記法]

    <%= form_for(@user) do |f| %>

    	<label><%= f.radio_button :カラム名, "カラムに追加する値" %>選択肢の文字<label>

    <% end %>

[参照](https://freesworder.net/rails-form_for-radio/)
