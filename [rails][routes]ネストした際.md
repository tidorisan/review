---
title: "[rails][routes]ネストした際"
tags: "大事"
---

[注意]

-   controller　でリダイレクト先のidを渡す際に子要素のidを使用する[post_images/id post_image_id]- 

-   viewで　リンク先の記述のしかた　\[post_image_post_comment_pasth [二つのidが必要]]

post_image_post_comments POST   /post_images/:post_image_id/post_comments(.:format)     post_comments#create
 post_image_post_comment DELETE /post_images/:post_image_id/post_comments/:id(.:format) post_comments#destroy

 &lt;%= link_to "削除", post_image_post_comment_path(post_comment.post_image, post_comment), method: :delete, class: "btn btn-danger pull-right" %>

post_imageにコメントする[post_comment model]

[create]

post_comments controller

    def create
    	<!--   リダイレクトする先の[post_image] を作成している 使用するのはpost_commentモデルの			post_image_idカラム= post_image.id 	 -->
    	post_image = PostImage.find(params[:post_image_id])
        
    	<!--    省略されている　comment.user_id = current_user.id と      -->
    	comment = current_user.post_comments.new(post_comment_params)
    	comment.post_image_id = post_image.id
    	comment.save
    	<!--    リダイレクト      -->
    	redirect_to post_image_path(post_image)  
    end

検索して変数に入れて　save

[注意]

    comment = current_user.post_comments.new(post_comment_params)
    	(post_commests になることに注意　複数形)

    は　同じ

    comment = PostComment.new(post_comment_params)
    comment.user_id = current_user.id

[destory]

post_comments_controller.rb

    def destroy
    	<!--   リダイレクト   -->
    	PostComment.find_by(id: params[:id], post_image_id: 			
    	params[:post_image_id]).destroy
    	redirect_to post_image_path(params[:post_image_id])  
    end

デストロイの際　ネストしている場合　find id　では特定できないのでfind_by id とpost_image_idで探している

レダイレクトする際の変数を作成してないが　検索して持ってきている 
PostComment.find_by(id: params[:id], post_image_id: params[:post_image_id])
これを使って飛ぶ
カラムを直接書いている

検索して変数に入れてないでdestroyしている
