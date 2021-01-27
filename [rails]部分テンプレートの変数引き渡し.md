---
title: "[rails]部分テンプレートの変数引き渡し"
tags: ""
---

部分テンプレートの変数渡しの際
名前をどの程度いじって良いのか

同じ名前で　インスタンス変数とかあるのか

名前異なっても良い

[Rails　パーシャル(部分テンプレート)へローカル変数を渡したいとき](https://qiita.com/takannporo/items/a8ff93109afc3bc3bab4)

    <%= render "users/list", user: @user ß%>

[インスタンス変数とローカル変数の扱いに注意]

中略
&lt;%= render partial: 'product_body', locals: { product: @product } %>
　　　　　　　　　　　　パーシャル名　　ローカル変数名： インスタンス変数名
省略形
&lt;%= render 'product_body', product: @product %>
