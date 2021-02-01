---
title: "[rails]モデルの関連付け"
tags: ""
---

[view]
〜の〜を表示させたい

本来　　モデル名[ローカル変数].カラム名　book.comment

関連づけられている場合

-   model.rbに記載した内容を記載する

1:n  1 user:   has_many :books, dependent: :destroy
     n book:   belongs_to :user

      user.books.comment になる
