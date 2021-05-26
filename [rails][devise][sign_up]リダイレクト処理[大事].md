---
title: "[rails][devise][sign_up]リダイレクト処理[大事]"
tags: ""
---

[注意 createで行う]

  [sign_upが成功した後にDeviseの登録コントローラをオーバーライドしてリダイレクトを許可する](https://www.366service.com/jp/qa/3f1e35212a35456c738ad2ee5dc5d064)

  class Users::RegistrationsController &lt; Devise::RegistrationsController 

  def create
    if params[:user][:role] == "store_admin"
      session["#{resource_name}_return_to"] = users_homes_path
      super
    else
      session["#{resource_name}_return_to"] = root_path
      super
    end
  end

 [だめ]
 def after_sign_up_path_for(resource)
  authors_waiting_path
end
