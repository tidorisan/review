---
title: "[rails][devise]ログイン画面でカラムの状態で判断する"
tags: ""
---

[前提]

-   ログイン画面ではemail.passwordを使用している
-   member:モデル使用してdeviseでユーザ機能を実装
-   member_status:カラム:boolea型:default:false[会員登録状態]&#x3A;true[退会済]
-   falseならログイン:trueならログイン出来ないようにする

[ポイント]

-   session/newではemail.passwordしか用いてないのでparamsではemail.passwordしか使えない=>emailを用いてレコードを取得してそれがパスワードを一致するか・member_statsuの状態をチェックする

-   devise superの記述はそのまま使用する

[コード]

    def create
       # emailを受け取る処理/emailカラムで検索するのでfind_byメソッドを用いる.またemailだとカラム名重複する場合があるので何モデルかも示すように指定する。.doencaseは大文字を小文字に変換するメソッド
      @member = Member.find_by(email: params[:member][:email].downcase)
      # emailで存在しているか調べる
      if @member
      	＃valid_password?で引数で受け取った値が@memberでも有効か検証し、同時に@memberのmember_statusがture[退会済み]か確認する
          if (@member.valid_password?(params[:member][:password]) && (@member.member_status == true))
          #もし両方の条件がtrueだった場合
            flash[:error] = "退会済みです。"
            redirect_to new_member_session_path
          else
         # もしtrueでなかった場合
            super
          end
    #emailで検索した際にレコード自体を持って来れなかった場合
      else
          flash[:error] = "必須項目を入力してください。"
          redirect_to new_member_session_path
      end
    end

[大事]

\-　先にどのような条件で分岐させたいか洗い出す

-   emailでまずレコードを取得する
