require "redmine"
require_dependency "redmine_oauth_discord/hooks/view_account_login_hook.rb"
require_dependency "redmine_oauth_discord/patches/user_patch"
require_dependency "redmine_oauth_discord/patches/users_helper_patch"

Redmine::Plugin.register :redmine_oauth_discord do
  name "Redmine OAuth Discord plugin"
  author "coldice"
  description "Redmine Authentication using Discord as OAuth2 provider"
  version "0.2.0"
  url ""
  author_url ""

  settings default: {
             client_id: "",
             client_secret: "",
             oauth_authentification: false,
             default_group_id: nil,
           },
           partial: "settings/discord_settings"
end
