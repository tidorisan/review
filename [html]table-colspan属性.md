---
title: "[HTML]table colspan属性"
tags: "20200725"
---

[参照](http://html5.cyberlab.info/elements/table/th-colspan.html)

colspan属性
th要素のcolspan属性は、表（テーブル）における、水平方向の見出しセルの結合数（セルがまたがる列数）を指定する属性。

tdで要素を並べるがその際に左から　th　が対応するがその際に
td二つにかけてthしたい場合に用いる

    <th colspan="列数"></th>

    <table border="1">
    <tr>
    	<th colspan="2">結合見出しセル</th>
    	<th colspan="3">結合見出しセル</th>
    </tr>
    <tr>
