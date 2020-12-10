---
title: "log-in"
tags: ""
---

<h2>管理者ログイン</h2>

&lt;%= form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>

  <div class="field">
    <%= f.label :メールアドレス %>
    <%= f.email_field :email, autofocus: true, autocomplete: "email" %>
  </div>

  <div class="field">
    <%= f.label :パスワード %>
    <%= f.password_field :password, autocomplete: "current-password" %>
  </div>

  &lt;% if devise_mapping.rememberable? %>

    <div class="field">
      <%= f.check_box :remember_me %>
      <%= f.label :remember_me %>
    </div>

  &lt;% end %>

  <div class="actions">
    <%= f.submit "Log in" %>
  </div>
<% end %>

&lt;%= render "admins/shared/links" %>
