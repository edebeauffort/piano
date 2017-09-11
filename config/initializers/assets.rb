# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
#Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
#Rails.application.config.assets.precompile += %w( search.js )
#Rails.application.config.assets.precompile += %w( * )
#Rails.application.config.assets.precompile += [/.*\.css/]



# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
Rails.application.config.assets.precompile << %w(admin/admin.js admin/admin.scss)
Rails.application.config.assets.precompile << /fonts\/.*\.(?:eot|svg|ttf|woff2?)$/
Rails.application.config.assets.precompile += %w(soundmanager2.swf soundmanager2_flash9.swf)
