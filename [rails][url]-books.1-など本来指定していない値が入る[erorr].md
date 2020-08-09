---
title: "[rails][url] books.1 など本来指定していない値が入る[erorr]"
tags: ""
---

プロフィール編集が成功した後のurlを確認しますと
localhost:3000/users.1
となっていますが、users.1は余分に引数を渡しているときにこのように表示されます。

users_pathはindexページですのでid(引数)は不要ですが、(@user)が渡されてしまっています。

見本のBookers通りに詳細ページにリダイレクトしたいため、user_path(@user)が適切です。

-   コントローラーでのredirect_toで余分な引数渡している

indexページなのに(@book)みたいな

    def update
     @user = User.find(params[:id])
     if @user.update(user_params)
       redirect_to users_path(@user), notice: "successfully updated user!"
    　　edirect_to user_path(@user), notice: "successfully updated user!"
      else
