---
title: "[rails] [devise]新規登録時にemail.password以外のカラムを追加する際"
tags: ""
---

[手順]

1.  deviseでmigration file作成時にカラム追加して$ rails db:migrate

2.  入力フォームをカスタマイズするため、まず編集するviewを表示させるため&$ rails g devise:views を行う

3.  registraion/new_viewで新規登録時に必要な入力フォームを記載する

4.  新規登録時のコントローラはdeviseライブラリに存在するため直接編集できないのでapplication.controller.rbに入力フォームから受け取った値を保存するためのストロングパラメータを追加したいカラムを交えて記載する。

[注意]

ストロングパラメータを記載する際にdefore_actionも忘れないようにする

    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name,
       :last_kana_name, :first_kana_name, :post_number, :telephone_number, :address,
        :member_status, :email])
    end

もしdevise_controllerを使用する場合、defor_actionを行う

devise_controllerのdeviseは二つのモデルを使用するためurlなどがadmins memberでもdeviseのままで良い
