---
title: "validateion check について"
tags: "20200716,rails"
---

# 考え方

* * *

1.  model
2.  controller
3.  view

に手を入れる

# 手順

* * *

view new - browserから受け取ったdate -    toutes[url- controller]

uerl -  -  contrlloer

1.  model.rb にどのどのような検証をするのか

        class Book < ApplicationRecord
        	validates :title,presence: true
            validates :body,presence: true
        end

    end

controller - vaildateion cheack -  action

2.  controller action


      def create
      			book = Book.new(book_params)
        	if book.save
                	redirect_to book_path(book), notice: "successfully created book!"
            else
            		render 'index'
            end
            

[注意]
flash 用いない場合　if else end のみ

3.  view 

&lt;%= form_for(@book, url: '/books') do |f| %>

  <!-- 検証 赤い枠はcss 課題-->

    <% if @book.errors.any? %>
    	<%= @book.errors.count %>errors prohibited this book from being saved:
    	<% @book.errors.full_messages.each do |message| %>
    		<ul>
        <li><%= message %></li>
      </ul>
    	<% end %>
    <% end %>

-   form_forの小要素としていれる

# 注意事項

* * *

バリデーションチェック自体がうまく表示されない場合

controller/view の表記を変更してみる

-   in_controller

        	flash[:notice] = "error" 
-   in_view

        	<% if flash[:notice] %>
        		<%= flash[:notice] %>
        	<% end %>

で試してみる

(<https://qiita.com/h1kita/items/772b81a1cc066e67930e>)

[空でないこと]

    validates :title, presence: true

[長さ]

    validates :title,    length: { minimum: 1 }       # 「1文字以上」
    validates :title,    length: { maximum: 75 }      # 「75文字以下」
    validates :title,    length: { in: 1..75 }        # 「1文字以上75文字以下」
    validates :password, length: { is: 8 }            # 「8文字のみ」
