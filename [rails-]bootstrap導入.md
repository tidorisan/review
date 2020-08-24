---
title: "[rails ]bootstrap導入"
tags: ""
---

css フレームワーク
少ない手順でデザインのページを完成できる

デザイン生が高い
「グリットデザインシステム」pageの横幅を１２分割できる　レイアウトできる
レスポンシブ対応
豊富なレンプレート

gem file

    gem 'bootstrap-sass', '~> 3.3.6'
    gem 'jquery-rails'

行内にいれない

    bundle install

## bootstrapファイルを読み込む

app/asset/stylesheetフォルダのapplication.cssを開きます。

現在のファイル名は「application.css」ですが、「application.scss」に変更します。

### BootstrapをSCSSに読み込ませる

app/assets/stylesheets/application.scss

    *= require_tree .
    *= require_self
    */
    @import "bootstrap-sprockets";  /*ここを追加*/
    @import "bootstrap";            /*ここを追加*/

### application.jsファイルを編集する

[変更前]	

    app/assets/javascripts/application.js
    //= require rails-ujs
    //= require turbolinks
    //= require_tree .

[変更後]

    app/assets/javascripts/application.js
    //= require rails-ujs
    //= require turbolinks
    //= require jquery
    //= require bootstrap-sprockets
    //= require_tree .

この記述に変更することで、Bootstrapファイルを呼び出しています。
これで、Bootstrapを使える状態になりました。

これまで終わったらレイアウトに手を付ける
