# rals

# バリデーション チェック
validates :title, presence: :true

<%= if @post_images.error.any? %>
	<%= @post_images.error.count %>件があります
	# 間違えやすい
	<% @post_images.error.full_.messages.each do |message| %>
		<%= message %>
	<% end %>
<% end %>

validates :title, presence: true

<% if @ooo_imegeas.error.any? %>
	<%= @post_images.error.count %>
	<% if @ooo_imegeas.error.full_messages.each do |message %>
		<%= message %>
	<% end %>

<% end %>