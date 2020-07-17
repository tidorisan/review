---
title: "[rails]関連づけられたモデルの出力"
tags: ""
---

def show
    @book = Book.find(params[:id])
    @user = @book.user
    end

のように

book modelにおいて
bookのみdbから引っ張ってこれる

もし
book/showで

user tableのカラムが欲しい場合
関連連れられたモノが持って来れる
