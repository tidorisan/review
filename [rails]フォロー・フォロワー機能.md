---
title: "[rails]フォロー・フォロワー機能"
tags: ""
---

modelの関連　関連の多重度

view 既に following:user follower:iusr 同じg入っている場合[いいねと同じだが]

m:nの関係　中間テーブル
	1=>folloerしている人たくさん
    follower=>following user大量

モデルが同じ場合　following followeruserモデル用いる

＝＞　has_many :user とuser.rbにかけない
	belongs_to :user

    =>[ここで必要なこと]userモデルを別として扱う[仮の名前]

    user => following model user_id => following_id
    		follower model			=> follower_id
            
            =>foreing_keyの指定をはっきりさせる
            
    にする


    has_many :follo[中間 active_Relationship], forening_kry: ""

    belongs_to :  [passive_]

[関連の多重度の記述][同じモデルを使用する場合]

    has_many :[小モデル名], dependent: :destroy

    has_many :[小モデル/中間テーブル], class_name: "中間テーブル本来の名前", foreign/key: :[親モデル名_id]

    [注意]　belongs_to 記載しない/has_manyだけ

[中間テーブルを通って]

 has_many :[仮のモデル名], through: :[中間モデル名], source: :[中間テーブルを渡って使用数モデル]

-   [view]

 user_id が　フォローした人の名前[カラむ]

 &lt;%= @user.[中間テーブルを通過する際の仮のモデル名].[通った先のカラム名] %>

    # フォロー機能　フォロワー機能

# 自分がフォローしているユーザとの関連

# 重複しないように仮の名前を与える

  	has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id

# 中間テーブルを介して[Follower]モデルのUser[フォローされた人]を取得する

  	has_many :followings, through: :active_relationships, source: :follower

    # 自分がフォローされているユーザとの関連

 	 has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  	has_many :followers, through: :passive_relationships, source: :following

# 

# 自分がフォローされているユーザとの関連

  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :followers, through: :passive_relationships, source: :following

#
