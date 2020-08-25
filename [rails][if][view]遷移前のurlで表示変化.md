---
title: "[rails][if][view]遷移前のurlで表示変化"
tags: ""
---

[Railsで遷移元のURLを取得する方法](https://qiita.com/taka_571/items/9b1c82d8fcc602df8a1a)

request.referer
遷移前のURLを取得するにはrequest.refererを使う。

&lt;% if request.referer&.include?("/**\*\*\***/\*\*/") %>
  \#前のページが指定したURLだった場合のリンク先
&lt;% else %>
  \#その他のリンク先
&lt;% end %>

これでユーザ新規登録ページでの変化させる
