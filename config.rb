require 'susy'
require 'builder'

# Change Compass configuration
compass_config do |config|
  config.output_style = :compact
end

# Pages
page '/', layout: 'home'
page '/sitemap.xml', layout: false
page 'news/*', layout: 'news-layout'

# Helpers
helpers do
  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      start_year.to_s
    else
      start_year.to_s + '-' + end_year.to_s
    end
  end
end

activate :livereload
# activate :asset_hash
# activate :relative_assets
activate :directory_indexes

activate :blog do |blog|
  blog.prefix = 'news'
  blog.layout = 'news-layout'
end

# Deploy configuration
activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
end

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
end
