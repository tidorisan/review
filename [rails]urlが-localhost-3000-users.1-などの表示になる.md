---
title: "[rails]urlが　localhost:3000/users.1 などの表示になる"
tags: ""
---

localhost:3000/users.1

となっていますが、users.1は余分に引数を渡しているときにこのように表示されます。

[_path(本来不要な引数を渡している)]

users_pathはindexページですのでid(引数)は不要ですが、(@user)が渡されてしまっています。
見本のBookers通りに詳細ページにリダイレクトしたいため、user_path(@user)が適切です。
