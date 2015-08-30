module Mailkick
  module UrlHelper
    def mailkick_unsubscribe_url(list: true)
      Mailkick::Engine.routes.url_helpers.url_for(
        (ActionMailer::Base.default_url_options || {}).merge(
          controller: "mailkick/subscriptions",
          action: "unsubscribe",
          id: list ? "{{MAILKICK_TOKEN}}" : "{{MAILKICK_TOKEN_WITHOUT_LIST}}"
        )
      )
    end
  end
end
