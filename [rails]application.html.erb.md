---
title: "[Rails]application.html.erb"
tags: ""
---

web ページを表示する際
コントローラから

くるが

まず

application.html で読み込んで

その中の&lt;%= yield %>でそれぞれのアクションに対応するHTMLが読み込まれる

htmlの記載のようにおこなう

&lt;% DOCTYPE %>

    <!DOCTYPE html>
    <html>
    	<head>
    		<title>Bookers2</title>
    		<%= csrf_meta_tags %>
    		<%= csp_meta_tag %>
        	<%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
        <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
        </head>
    	<body>
     		<%= yield %>
    	</body>
    	<footer>
    	</footer>
     </html>
