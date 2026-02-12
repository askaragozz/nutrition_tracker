# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"


# Precompile application.scss so Rails includes it in production
Rails.application.config.assets.precompile += %w( application.scss )
