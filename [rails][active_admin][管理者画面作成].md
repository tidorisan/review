---
title: "[rails][active_admin][管理者画面作成]"
tags: ""
---

gem　導入
devise導入して行う

管理者画面でログインするための管理者モデルも制作してくれる

一度それを登録した後に、中に入って店舗や商品を追加する

[まず管理者画面を作った後に本格的にユーザ画面を作っていく]

リソースの追加
rails g active_admin:resource User
のようにモデルの名前を最後につけてやるとそれぞれに対応した管理ページを作成してくれます。

[初期パスワードの変更を行う場合]
db/seed.rb
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
が書かれていると思いますが、これが管理ユーザとなります。初期でメアドとパスワードを好きなものに変えたいときはこの時点で変えときます。

rails db:migrate
rails db:seed

を行います。

-   [これを参考に行う](https://ccbaxy.xyz/blog/2019/11/08/ruby12/)

-   [公式の導入方法これを参考に行う](https://activeadmin.info/0-installation.html)

-   [cancananでリダイレクトの処理などがうまくいかなかった場合はこちらを参考にする](https://qiita.com/Tsukuni/items/9e0e4cf707c27a8854ba)

-   [Railsで最速で管理画面を作る！](https://qiita.com/enomotodev/items/5f6d9348207124a41bf9)

その後に権限管理　cancancan
