---
title: "Railsのバリデーションエラーのメッセージの日本語化"
tags: ""
---

[Railsのバリデーションエラーのメッセージの日本語化](https://qiita.com/Ushinji/items/242bfba84df7a5a67d5b)

[これ忘れない]
次に、config/application.rbに以下の一文を追記します。これにより、サーバ再起動後にエラーメッセージが日本語化されていると思います。

config/application.rb
config.i18n.default_locale = :ja

module TIdoriSushiApp
  class Application &lt; Rails::Application

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.i18n.default_locale = :ja
    [間にいれる]

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

  end
end
