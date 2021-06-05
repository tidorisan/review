---
title: "[rails]devise＿ユーザ機能実装について_初期設定"
tags: "20200725"
---

[deviseの機能]

ユーザ機能を少ないコードで実装できるgem.

-   サインアップ
-   ログイン
-   登録したユーザのみの画面
-   コメント機能
-   いいね　フォロー機能など
      

* * *

[deviseを使用できる状態にするまでの手順]

1.  gem fileへの記入　gem "gem名"　　gem "devise"-

2.  gem をアプリへ読み込ませる　$ bundle install

=>基本的にgem をアプリに読み込ませるのはここまでの作業で終わる

3.  deviseの初期設定を行う　$ rails g devise:install

=> ここまでの作業で使用できるようになる

* * *

[できること]

\-　deviseを用いることでユーザ登録に必要なテーブルを自動的に作成する

    $ rails g divese User[モデル名]

    => users　table カラムやデータのプロパティも設定する

    [defalt] email:string pasword:string?

    =>　sign up / log_in時にはdefaltでemail/password カラムしか使用できない

   => migration file => $ bundel install して実際に作る
   	  user.rb [model] => deviseで使用する機能が記載されている
      test
      text
      config/routes.rb => deviseを使用する際に　urlにusers が入ることが描かれている
      				      devise_for :users 

rails g devise Users => $ bundle install =>viewなども初期設定で決められた物が用意される
