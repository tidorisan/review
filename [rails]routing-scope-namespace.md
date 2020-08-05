---
title: "[rails]routing scope namespace"
tags: ""
---

[参照](https://qiita.com/blueplanet/items/522cc8364f6cf189ecad)

[参照](https://qiita.com/ryosuketter/items/9240d8c2561b5989f049)

[記入]

namespace :admin do
  resources :users
end

scope :admins do
	resources :users
end

module :admins do
	resources :users
end
