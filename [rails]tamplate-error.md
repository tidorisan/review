---
title: "[rails]tamplate error"
tags: ""
---

[tamplate error]
view を出力する際に問題があることが原因
controller チェック

[A]
user を渡すのがcurrent_userだがログインしていないのでcurrent_userに持っていけない状態になっている.

defore_action anthentica_user! ログインしていないログイン画面へ転送
が user controller に存在する
本来ここで表示するのはbooks/index  show なので異なる？

![](2020-07-18-11-23-41.png)

![](2020-07-18-11-24-47.png)

![](2020-07-18-11-25-03.png)

![](2020-07-18-11-25-39.png)

なぜ

![](2020-07-18-11-30-51.png)

![](2020-07-18-11-31-19.png)

![](2020-07-18-11-33-20.png)

current_user を　view ではなく　controllerで作成して持っていく
![](2020-07-18-11-37-54.png)

[原因不明]
![](2020-07-18-11-38-17.png)

[A]
![](2020-07-19-12-13-49.png)
