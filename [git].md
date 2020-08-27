---
title: "[git]"
tags: ""
---

mergeした後にまず統合ブランチでpullする

その後にmergeした作業ブランチは

1.  そのあとも作業する場合は

[コマンド]

    git merge origin/統合ブランチ

    git push origin 作業ブランチ

2.  作業ブランチを今後使わない場合

[コマンド]

    git branch -D 作業ブランチ(作業ブランチ以外に移動してから行う)
