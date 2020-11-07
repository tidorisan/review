---
title: "[rails]いいね機能"
tags: ""
---

new cratteと同じ　dbにいれる

[手順]

model 設計	rails g model Favorite user_id:integer post_image_id:integer
				(モデル設計  migratefileも記述している)
            　カラム　id user_id post_image いいねの場合これのみ：コメントの場合これ				  プラスコメント

              １：nの関係漬けをする
              	(user: has_many favorites: depend: :destroy )
    			(favorite: belongs_to user)
                (post_image: has_many favorites: depend   )
                
               この際　favorited_by? メソッド使う　post_image.rbに
               引数で扱うユーザidがfavorite　tableに存在しているか
                
               
              

controller    new     専用のフォーム作らない　既にあるviewのコントローラーに表示させ							る値を渡す
			  create　

              destroy

routes     ネストすることに注意
			投稿画像にコメント => post_images/1/post_comment

view		<i>　ハートマーク
   			 &lt;% if @post_image.favorited_by?(current_user) %>
                 favoriteのuser_id current_user.id
