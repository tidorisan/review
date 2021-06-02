---
title: "[rails] 画像登録_refile_error"
tags: ""
---

![このような状態](2020-07-25-14-00-12.png)

-   fill => size

-   :fill
    画像の縦横サイズを指定します。単位はpxです。
    今回は「:fill, 100, 100, 」で指定したので、横幅100px、高さ100pxになります。
    【注意】サイズ指定で画像が表示されない場合は、:fillによるサイズ指定ではなく、size:で指定してください。

* * *

&lt;%= attachment_image_tag モデル名, :カラム名(末尾の\_idは除く),format: '拡張子名(例: jpeg)', :fill, 横幅の数値(例: 100), 高さの数値 %> 

&lt;%= attachment_image_tag モデル名, :カラム名(末尾の\_idは除く),format: '拡張子名', size: "横幅数値x高さ数値" %>

    <%= attachment_image_tag list, :image, format: 'jpeg', size: "100x100" %>

[参照ページ](https://web-camp.online/lesson/curriculums/191/contents/1031)
