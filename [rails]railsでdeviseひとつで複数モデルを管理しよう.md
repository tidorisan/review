---
title: "[rails]Railsでdeviseひとつで複数モデルを管理しよう"
tags: ""
---

[Railsでdeviseひとつで複数モデルを管理しよう](https://qiita.com/Yama-to/items/54ab4ce08e126ef7dade)

config

[vagrant@localhost nagano-cake]$ rails routes
                    Prefix Verb   URI Pattern                                                                              Controller#Action
members_destinations_index GET    /members/destinations/index(.:format)                                                    members/destinations#index
 members_destinations_edit GET    /members/destinations/edit(.:format)                                                     members/destinations#edit

[この作業で行えること]

-   １つのdeviseで２つのモデル[appで二つのログイン機能]

-   ルーティングの際にurlとコントローラーがそれぞれ区別することができる

[例]

devise/session/new

=>  admins/session/new

コントローラーが指定したディレクトリの中に移動する
[deviseで扱うモデルが２つ以上のため コントローラーの指定がデフォルトのままではルーティングの際に混乱する]
