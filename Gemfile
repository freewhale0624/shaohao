source 'https://rubygems.org'

gem 'rails', '4.2.0'

### OpenShift Online changes:

# Fix the conflict with the system 'rake':
# gem 'rake', '~> 0.9.6'
gem 'rake', '~> 10.4.2'

# Support for databases and environment.
# Use 'sqlite3' for testing and development and mysql and postgresql
# for production.
#
# To speed up the 'git push' process you can exclude gems from bundle install:
# For example, if you use rails + mysql, you can:
#
# $ rhc env set BUNDLE_WITHOUT="development test postgresql"
#
group :development, :test do
  gem 'minitest'
  gem 'thor'
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'pry-rails'
  gem 'spring', '~> 1.3.6'
end

### / OpenShift changes

# Use SCSS for stylesheets
# gem 'sass-rails', '~> 4.0.3'
gem 'sass-rails', '~> 5.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
# gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
# gem 'sdoc', '~> 0.4.0',          group: :doc
group :doc do
  gem 'sdoc', '~> 0.4.0'
end

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
# gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'devise', '~> 3.4.1'
gem 'bootstrap-sass', '~> 3.3.4.1'
gem 'slim', '~> 3.0.3'
gem 'simple_form', '~> 3.1.0'
gem 'ckeditor', '~> 4.1.1'
gem 'carrierwave', '~> 0.10.0'
gem 'mini_magick', '~> 4.2.0'
gem 'kaminari', '~> 0.16.3'
gem 'pg', '~> 0.18.2'
gem 'acts-as-taggable-on', '~> 3.5.0'
gem 'font-awesome-rails', '~> 4.3.0.0'
gem "recaptcha", require: "recaptcha/rails", github: "ambethia/recaptcha"