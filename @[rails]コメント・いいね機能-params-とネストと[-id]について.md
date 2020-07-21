---
title: "@[rails]コメント・いいね機能 params とネストと[:id]について"
tags: "大事"
---

コメント入力フォームを記述する
さらに、コメント入力フォームも、form_forヘルパー用に書き換えます。

    <%= form_for [@post_image, @post_comment] do |f| %>

form_forに対して、[@post_image,@post_comment]のように、配列でインスタンス変数を2つ指定している点に注意してください。

コメントは、post_imageに結びついたpost_commentにあるため、2つ用意する必要があります。

また、post_commentをcreateするためのリクエストは、ルーティングもネスト（親子関係）しているため、上記2つの情報が必要になります。

[?]

結びついているなら

user model と結びついた　book(投稿した内容)　book model 
記載する場合はこのようなformはしなかった

なぜ

def create

    <!-- 入力フォームから受け取るデータは comment のみなので　user_id / post_image_id も作成する必要がある-->
    <!-- post_image モデルに　post_image_id カラムは存在しない    -->

-   ここの記載はルートがネストしている場合にのみ必要である
    post_image/1/post_comment の場合である　
    post_image(post_commentのカラム)に値が必要であるが、post_imageの値はpost_image/showで既に渡されている

url postimages/1/postcomment

-   id 1で受け取った情報が　def createの際に既に渡っているpostcommentに移動している

### params = 次のページに表示させたいデータをわたす際に必要{アクションで必要な内容をいれる}

[post/image_id]はカラム名ではない　ではなんで[:id]ではないのかというと## ネスト しているからである

もし一番上の階層　[:id]を探せるが
ネストしている場合　その親要素のみが行える [:post_image_id]

post_image = PostImage.find(params[:post_image_id])
(カラム)　

## ネストしてる場合　controllerでのアクションで[:id]がその親要素のidになる

    post_image = PostImage.find(params[:post_image_id])
    <!--   commentのカラムにいれる   -->
    comment = current_user.post_comments.new(post_comment_params)
    comment.post_image_id = post_image.id
    <!--  ここからsavaする    -->
    comment.save
    redirect_to post_image_path(post_image)  

end

comment = current_user.post_comments.new(post_comment_params)

こちらの記述の仕方は、以下のように記述したものと変わりません。

comment = PostComment.new(post_comment_params)
comment.user_id = current_user.id
