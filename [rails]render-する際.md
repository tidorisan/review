---
title: "[rails]render する際"
tags: ""
---

rendsr先がすぐにページが取り出される

エラーなどそのままほしい

def craete 
	@book = Book.new (book_params)
	if @book.save 
    	redirect_to
    else 
    	render #ここでエラーのままページが表示されてほしい　
        		book/newページでエラーの内容そのままほしい　エラーぶん表示
                ここのページを表示されるための＠インスタンス変数ほしい

    end

end
![](2020-07-19-19-17-37.png)
