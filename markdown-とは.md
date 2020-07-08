---
title: "Markdown とは"
tags: ""
---

# Markdownとは

気軽に書いた文章からHTMLを生成する言語でありマークアップ言語の一つ。

\##普通のメモ張では使用できない。メモ帳がmarkdownに対応している必要がある。

## 使い方

-   # 見出し

# 大見出し

## 中見出し

### 小見出し

標準

-   # 強調

_イタリック体表示_
**太字表示**
~~打ち消し表示~~

-   # 収納

<details><summary>Boostnote</summary>
    -機能-<br>
     メモ<br>
    markdown<br>
    </details>
    

-   # リスト


-   リスト1
-   リスト2
-   リスト3


-   # リンク

[boostnote](https://boostnore.io)

-   # チェックボックス

-   [x] タスク1

-   [ ] タスク2

-   [ ] aaa

-   # 引用

> 引用
> 引用引用

-   # 水平線

* * *

* * *

* * *

* * *

-   # 画像埋め込み

![画像タイトル](https://boostnote.io/assets/img/logo.png)

-   # ソースコードの記入

render: function() {
	return (

    	<div className="commentBox">
        <h1>Comments</h1>
        <CommentList data={this.state.data} />
        <CommentForm onCommentSubmit={this.handleCommentSubmit} />
      </div>
    );

   }

-   # テーブル表記

| 果実　　  |  値段 |
| :---- | --: |
| りんご　  | 120 |
| budou |  20 |
