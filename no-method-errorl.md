---
title: "no method errorl"
tags: ""
---

NoMethodError in Books#index
Showing /home/vagrant/work/bookers1_debug/app/views/books/\_form.html.erb where line #17 raised:

undefined method \`title' for #&lt;Book id: nil, body: nil, created_at: nil, updated_at: nil>

カラム名のメソッド定義さえていない

-   db check 
    カラム名が存在しているか。

Extracted source (around line #17):
15
16
17
18
19
20

  <div class="field">
    <%= f.label :title %>
    <%= f.text_field :title, class: "book_title" %>
  </div>

  <div class="field">
