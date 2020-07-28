---
title: "[rails]サクセスメッセージ  flash :notice/alter"
tags: "20200725"
---

[参照](https://pikawaka.com/rails/flash)
in controller

flash[:notice] = "サクセスメッセージ"

in view

&lt;%= flash[:notice] %>

[とは]

flashメッセージとは、アクション実行後[のurl=>次のページ]に簡単なメッセージを表示させるRailsの機能です。

deviseの機能を使用した場合とそうでない場合で実装方法が違いますが、今回はdeviseを使用していない場合のflashメッセージの表示方法について説明していきます。
また前提として、今回はview部分をhaml記法にて記述します。

-   ## [イメージ]

エラーメッセージの入った変数[flash_箱]で「成功/失敗のメッセージを入れたキーを指定する」
view 変数のキーを表示させる

-   ## [手順]

1.  controller [FlashHash]オブジェクトを用いる

flashメッセージ使用するためには、「FlashHash」というオブジェクトを使用します。
こちら、名前の通りハッシュオブジェクトです。
後述しますが、処理が成功した場合には[:notice]キーを、失敗した場合には[:alert]キーを使用します。

[投稿に成功した場合]

投稿に成功した場合

3   if @message.save
4     # 投稿に成功した場合
5     flash[:notice] = 'メッセージが送信されました[value]'  #ここが例と違う
6     redirect_to group_messages_path(@group) #ここが例と違う

4    if @message.save
5      redirect_to group_messages_path(@group), notice: 'メッセージが送信されました'

[注意]
redirect_to book_show(@user), notice: "  "

-   flashの箱は持ったまま　プラス　　コントローラで作成される値

[投稿に失敗した場合]

else
6      flash.now[:alert] = 'メッセージを入力してください。'
7      render :index

[キー]

&lt;%= notice %> 成功時
&lt;%= alert %>　失敗時

[view]

&lt;% if flash[:notice] %>
	&lt;%= flash[:notice] %>

&lt;% end %>

* * *

\-　文字もkeyも出力したい

\-　sucess もerrorも同じページくる

flash[:alert] = "名前を入力してください"

&lt;% flash.each do |key, value| %>

  <p>キー名: <%= key %><p>
  <p>メッセージ: <%= value %><p>
<% end %>

![](2020-07-25-20-45-48.png)
