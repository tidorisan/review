---
title: "[mac os zzhコマンド]2021/05/19　$df -H "
tags: ""
---

du  ディレクトリの使用量表示　du (disk usage)
df ディスクの使用量表示
df -H | less
  ディスクの使用量表示　分かりや単位をつけてディスク表示する

マウントされている各ディスク上[記憶媒体]の空きディスク容量が表示されます。

ssd/ hdd
Filesystem      Size   Used  Avail Capacity iused      ifree %iused  Mounted on
/dev/disk1s1    121G    11G    43G    21%  488237 1181330203    0%   /
devfs           194k   194k     0B   100%     656          0  100%   /dev
/dev/disk1s5    121G    61G    43G    59% 1102816 1180715624    0%   /System/Volumes/Data
/dev/disk1s4    121G   4.3G    43G    10%       4 1181818436    0%   /private/var/vm
map auto_home     0B     0B     0B   100%       0          0  100%   /System/Volumes/Data/home

Filesystem\[ボリューム[cpから見た外部記憶装置の数え方]に付けられたUnixデバイス名]      Size[ディスク容量の総合計]   Used[使用されている容量]  Avail[使用可能容量 ] Capacity[使用されている容量が全容量に占める割合 ] iused      ifree %iused  Mounted on[マウントポイント]

[注意]Capacity[使用されている容量が全容量に占める割合 ]
1\. 使用率が100％になっているdevfsなどは通常のディスクではないUnixデバイスなので気にする必要はない。注意すべきは起動ディスク（ここでは/dev/disk2s3）の使用率。

2.  devfsは、カーネルが管理するデバイス関係の情報をファイルシステムに見せかけて扱うことができるものである。　通常は/devにmountして使う
