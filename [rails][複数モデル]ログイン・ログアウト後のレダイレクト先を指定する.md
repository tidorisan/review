---
title: "[rails][複数モデル]ログイン・ログアウト後のレダイレクト先を指定する"
tags: ""
---

[前提]

-   deviseを使用しユーザー機能を実装している
-   Admin / Memberモデルを使用している
-   今回はそれぞれのログイン・ログアウト後のリダイレクト先を指定する
-   またそれぞれのモデルのurlやコントローラをわかりやすい形にするため階層構造にしている [get "admins/secction/new" => "admins/admins#new"]

[注意]
今まで一つのモデルを用いていたが、複数モデルを扱う際リダイレクト先を指定したくなった。

[今までの方法]

    private
    def after_sign_in_path_for(resoure)
    	root_path
    end

[考え方] in_application.controller

    private
    def after_sign_in_path_for(resource_or_scope)
    	if resource_or_scope.is_a?(Admin)
      		admins_orders_top_path
    	else
      		root_path
    	end
    end

    def
    	after_sign_out_path_for(resource_or_scope)
        if resource_or_scope == :member
      		root_path
    	elsif resource_or_scope == :admin
      		new_admin_session_path
    	else
      		root_path
        end

 	end
