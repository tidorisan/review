---
title: "[capistrallo][デプロイ][db]本番環境と開発環境で使用するdbが異なる場合の注意点"
tags: ""
---

# [結論]

使用するdbが異なる場合、migrationファイル関係などdb関係で予想もしないエラーが発生する場合がある。

# [自分のケース: SQLite(開発)=>MySQL(本番)]

## [エラーを吐き出す要員]

textのdate型: defualt: ""設定

SQLiteではエラーにはならないが、MySQLだとエラーの原因になる。

## [一度データベースに入れた内容と行っている場合:テーブルを削除したなど]

いくらcurrentで　rails db:migrateしてもだめ

dbをリセットしてからdb:create db:migrateする
