---
title: "[rails]画像を利用する際に[image_tagを用いる]"
tags: ""
---

# [やり方]

-   html: 

        	<img src=""(画像までのパス) alt=""(画像が表示されない場合などに表示する文字)>
-   rails:(dbを用いない場合)

        	<%= image_tag  %>
-   rails:(dbに登録:gem refile使用)

        	<%= attachment_image_tag インスタンス変数(例: @store), :カラム名(例: image),  fallback:(画像がdbから持ってこれないなど表示されない場合) "~~.jpg"(画像名), size: "50x50"(cssで設定した方が好ましい) %>

注意:もしhtmlのimg要素を用いて表示されない場合もあるのでrailsタグを用いる方が好ましい。

# [背景画像]

-   \~~.erb:(各種view)
        	<div class="box1">
      </div>
      
-   css: 

        	.box1 {
        		background-image: image-url("xxxxxxx.jpg"[画像までのパス:railsではimages/フォルダにあるファイル名のみ記載すれば良い]);
          background-size: cover;
        	}
-   注意: デプロイを考慮し 

        	background-image: url("xxxxxxx.jpg");の記載の仕方を一部変更
