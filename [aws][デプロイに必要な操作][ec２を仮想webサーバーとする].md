---
title: "[aws][デプロイに必要な操作][EC２を仮想webサーバーとする]"
tags: ""
---

[appのデプロイに必要なもの]
ipアドレス(webサーバーの)
webサーバー

[awsを利用したやり方]

-   amazon web serviceで利用できるEC2(amazon elastic computer cloud: amazonが提供する仮想サーバ)をwebサーバーとする

-   EC2を準備した後にmacから接続する(EC2作成時準備したキーを利用してssh接続する)

-   EC２インスタンスにログイン状態にした後にnginx(サーバーをwebサーバーとして利用できるようにするミドルウェア)をインストールし、自動で起動できるようにする。

ECインスタンスのデフォルト状態だとipアドレス
