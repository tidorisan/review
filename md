---
title: ""
tags: ""
---

def top
    @q = Store.ransack(params[:q])
    @store = Store.includes(:user).where(user: {unsubscribe_status: true})
    @stores = @store.where(display_status: true).limit(8).order(id: "DESC")

    # 親モデルでのカラム条件検索

  end
