---
title: "undefind method 'each' でのカラム名"
tags: "20200716"
---

# 考え方

* * *

## カラム名がerror文に表示される場合未定義ではない

それに関係している引数が問題である

* * *

-   ### カラム名が存在していないー追加する必要がある

-   ### カラム名は存在しているが、viewにおいてオブジェクトが渡されていない

* * *

-   render先でのエラーで表示される場合

in_controller

そのviewを表示するのに必要なオブジェクトを用意する

    @book = Book.new
    render "index"

という感じに行う
