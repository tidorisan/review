---
title: "@_[error]リダイレクトの繰り返し"
tags: ""
---

![](2020-07-17-14-38-44.png)

![](2020-07-17-14-39-52.png)

失敗/エラー：new_user_session_pathにアクセスします

      Capybara :: InfiniteRedirectError：
        5回以上リダイレクトされた場合、無限リダイレクトがないか確認します。
        
        

-   リダイレクトを止める

routes.rb

before_action
![](2020-07-17-14-41-54.png)

![](2020-07-17-14-57-29.png)

before_action :configure_permitted_parameters, if: :devise_controller?

devise のストロングパラメータ

![](2020-07-17-15-20-10.png)

 [ルートの順番]

 Railsのルーティングは、ルーティングファイルの上からの記載順に読み込まれていきます。
今回はコードが無限ループになってしまっている状態であるために立ち上げれないエラーが起きています。
routes.rbに上からの記載順は正しく書かれているのかを確認しましょう。
