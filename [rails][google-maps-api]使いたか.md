---
title: "[rails][google maps api]使いたか"
tags: ""
---

[サイト](https://qiita.com/momonoki1990/items/31390a355e2f6d24a81b)

マップのみ表示できる

事前に
住所address
緯度経度カラム作る

gem geocoder

bundle install

class CreateShops &lt; ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

  end
end

も忘れない

# ストロングパラメーター

  def map_params
    params.require(:map).permit(:address, :latitude, :longitude, :title, :comment)
  end

class Shop &lt; ApplicationRecord

    geocoded_by :address
    after_validation :geocode, if: :address_changed?

end
