---
title: "[rails]いいね機能"
tags: "20200726"
---

[ポイント]

-   誰が　user_id

-   何に book_id

-   一回しかできない
    => user_id が　同じbook_idにいいねする情報は一回のみ
       ======> viewにおいて　ログインユーザが~に既にいいねしているか確認する条件をかく
       		if curesnt_user.favorites(user)
            


-   ログインしているユーザがいいねする ==========大事

[model]

Fovorite {favorites}

id
user_id 誰
book_id 何に

[controller]

favorites

[new] ---いいねを押したいページに記載 
		空のインスタンス変数にuser_id
        				  book_id を既につける

        fomr_for[@book, @comment] 二つ必要
        user_idはsave時に付け加える

create -----user_id [current_user ログインしているユーザ]
			book_id urlをネストすることで取得\[book_id: params[:book_id]]
    		if saveする
               そのアクションへのルーティングを飛ばしたページに戻る, notice: "サクセス"
            else 
            	指定pwーじを開くために変数
            	flash[:notice] = "  "
            	render "books/show"
[大事なことは] 誰の　何にを指定するkと

  def create
    post_image = PostImage.find(params[:post_image_id])
    favorite = current_user.favorites.new(post_image_id: post_image.id)
    favorite.save
    redirect_to post_image_path(post_image) 
　end

  	def create

    	# 値を受けとって変数の中にいれる savaしてリダイレクトする
    	# user_id を取得
    	# 別にviewhに変数を持っていかないのでローカル変数用いる
    	@book = Book.find(params[:book_id])

    	@favorite = Favorite.new
    	# user_id
    	@favorite.user_id = current_user.id
    	# book_id を習得する
    	@favorite.book_id = @book.id

    	if @favorite.save
    			redirect_to request.referer

    	end
    end

            

destory ---- [既にdbに存在するdetaを指定する]
			=> id だけでは指定できない
            @book_comment = BookComment.find_by(id: params[:id], book_id: params[:book_id])

[m][c]

[view]
new 　　　
create
destory
