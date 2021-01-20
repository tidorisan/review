---
title: "      <div class="input_field">         <%= f.label :email %><br />         <%= f.email_field :email, autofocus: true, autocomplete: "email", placeholder: "例) tidori@hoge.com", autofocus: "ture", required: "true", class: "text_field" %>       </div>        <div class="input_field">         <%= f.label :password %>         <% if @minimum_password_length %>         <em>(<%= @minimum_password_length %>字以上)</em>         <% end %><br/>         <%= f.password_field :password, autocomplete: "new-password", placeholder: "例) ******", required: "true", class: "text_field" %>       </div>         <div class="input_field">         <%= f.label :password_confirmation %><br />         <%= f.password_field :password_confirmation, autocomplete: "new-password", placeholder: "例) ******", required: "true", class: "text_field" %>       </div>        <% if request.referer&.include?("/users/users/confirmation") %>         <%= f.label :role, "店舗管理者" %>         <%= f.check_box :role, {}, "store_admin" %>       <% end %>"
tags: ""
---

<div class="input_field">
        <%= f.label :email %><br />
        <%= f.email_field :email, autofocus: true, autocomplete: "email", placeholder: "例) tidori@hoge.com", autofocus: "ture", required: "true", class: "text_field" %>
      </div>

      <div class="input_field">
        <%= f.label :password %>
        <% if @minimum_password_length %>
        <em>(<%= @minimum_password_length %>字以上)</em>
        <% end %><br/>
        <%= f.password_field :password, autocomplete: "new-password", placeholder: "例) ******", required: "true", class: "text_field" %>
      </div>


      <div class="input_field">
        <%= f.label :password_confirmation %><br />
        <%= f.password_field :password_confirmation, autocomplete: "new-password", placeholder: "例) ******", required: "true", class: "text_field" %>
      </div>

      <% if request.referer&.include?("/users/users/confirmation") %>
        <%= f.label :role, "店舗管理者" %>
        <%= f.check_box :role, {}, "store_admin" %>
      <% end %>
