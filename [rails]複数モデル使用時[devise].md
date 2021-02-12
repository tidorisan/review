---
title: "[rails]複数モデル使用時[devise]"
tags: ""
---

[deviseで複数モデルを管理](https://qiita.com/yuuyas222/items/b949ab4337deba945ba8)

rails g devise:install

config/initializers配下にdevise.rb が追加される。
config.scoped_views = true

 rails g devise "関連づけたいモデル名"

 ![](2020-08-25-18-55-34.png)

 urlはadmins/sesstionとかになるが
 コントローラ・アクションが  devise/passwords#updatかぶる

 devise_for :models, controller: {
 sessions: "models/sessions",
 passwords: "models/passwords"
 registrations: "models/registration"
 }

 rails g devise:controllers "関連づけたモデルと連動するコントローラー名（s）"
 rails g devise:views users(対応するコントローラー名)

  app/views/users/sessionsになる

urlとコントローラ テーブル名/sesstion:controller
