---
title: "[rails][devise]ログイン後のリダイレクト画面"
tags: ""
---

def after_sign_in_path_for(resource)
    	root_path # ログイン後に遷移するpathを設定

  	end
	def after_sign_out_path_for(resource)
  		root_path
  	end

    def after_sign_in_path_for(resource)

    end

これを行うことでログイン後の画面が別のページに移動することがなくなる
