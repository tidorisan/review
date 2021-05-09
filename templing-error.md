---
title: "templing error"
tags: "rails,20200717"
---

コントローラ名とview名を同じにする
![](2020-07-16-19-45-47.png)

controllerで設定しているアクションの、

viewが設定されていない場合に発生するエラーです。

Ruby on Railsはcontrollerのアクション名とviewのページ名が同名称になる事が基本で、controllerのアクションとviewのページ名に差異がある場合はcontrollerで明示的に記載する必要があります。

\-form.html

render "form"にする
