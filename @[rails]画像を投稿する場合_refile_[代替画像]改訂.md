---
title: "@[rails]画像を投稿する場合_refile_[代替画像]"
tags: "20200725"
---

[前提]

-   初期設定では文字しかdbに登録できない

-   gemを利用する

-   image_idをカラムに追加する

-   画像アップロード専用のメソッドをmodel.rbに記載する

[使用するgem]

1.  refile 

-   ファイルをアップロードできるようにするgem。

2.  refile-mini_magick

-   アップロードした画像のリサイズを行えるgem。
-   リサイズ機能があると、投稿された画像を最適なサイズに変換できるようになる。[viewにおいて]

[手順]

### 1. Gemfileに、2つのgemを追加しましょう。

    in gem_file

    gem "refile", require: "refile/rails", github: 'manfe/refile'

    gem "refile-mini_magick"

### 2.appでgemが使えるようにする

    $ bundle install

[注意]

カラム名: image_id[画像のurlを指定する] 形:string

[viewにおける画像表示の注意]

### 3.  画像アップ用のメソッドをmodel.rbに追加する

    attachment :image # ここを追加（_idは含めません）

### 4. viewにおける注意事項

-   new :画像のアップロード

        	<%= f.attachment[画像アップ用のメソッド]_fild :image[カラム名 image_idだがimageとかく] %>

-   indexなど　画像掲載

        	<%= attachment_image_tag [モデル名], :[カラム名] %>

-   attachment_image_tagのオプション


    <%= attachment_image_tag 保存先インスタンス名[保存先のモデルのインスタンス変数{ここではeach|post_image|}], :保存先カラム名, :サイズ（横幅,高さ）, 画像拡張子, 代替画像 %>

    <%= attachment_image_tag post_image.user, :profile_image, :fill, 100, 100, format: 'jpeg', class: "img-circle pull-left profile-img", fallback: "no_image.jpg" %>

-   代用画像[dbに登録するなどしないdefaltで保存されているもの　またはHP表示の際に必要な物など]


-   fallback: "[file名]"
    画像データがカラムにない場合、代わりに表示する画像を指定します。
    今回は、事前に準備した画像（app/assets/imagesフォルダ内のno_image.jpgファイル）を指定しています。

これを用いるには

app/assets/image ディレクトリに必要な画像を入れておく

ここで使用する

class: "home_image pull_home_image"

[参照ページ](https://web-camp.online/lesson/curriculums/191/contents/1031)
