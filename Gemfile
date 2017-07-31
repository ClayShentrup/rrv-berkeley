source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'
# Use postgresql as the database for Active Record
gem('pg')
# Use Puma as the app server
gem 'puma', '~> 3.7'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem('responders') # A set of Rails responders to dry up your application

gem('simple_form') # Rails forms made easy.

# assets
gem('sass-rails') # Ruby on Rails stylesheet engine for Sass
# HTML Abstraction Markup Language - A Markup Haiku http://haml.info
gem('haml-rails')
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem('webpacker')
# Use Uglifier as compressor for JavaScript assets
gem('uglifier')

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem('rspec-rails') # RSpec for Rails-3+
  gem 'selenium-webdriver'
  gem('shoulda-matchers') # testing matchers extracted from Shoulda
  # A library for setting up Ruby objects as test data.
  gem('factory_girl_rails')
  gem('rails_best_practices')
  gem('rubocop')
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
