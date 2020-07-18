---
title: "[rails]current_user　in view"
tags: ""
---

devise　gemを使用した際に使えるようになるヘルパーメソッドmethod{viewのみで使える}の一つ

current_user = レコード全て持ってくる
				id name email password profile_image introduction全て持っている
				current_user.id ＝　idのみ

[条件]

ログインした状態のみで使用できる
ログインしていない状態で
	user:index
indexのviewでcurrent_userがあってもobjectを呼び出すメソッド使用できない
error template error > viewが呼び出せない
	&lt;% if current_user. == @book/user_id %>
	&lt;% render "users/list", user: current_user.id %>
とか呼び出せない
