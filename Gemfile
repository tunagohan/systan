source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# --- defaults gems --- #
gem 'rails', '~> 5.2.0'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'capistrano-rails', group: :development
gem 'bootsnap', '>= 1.1.0', require: false

# --- self add gems --- #
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'          # jQuery
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'  # Awesomefont
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'        # SasS bootstrap
gem 'paranoia', '~> 2.4', '>= 2.4.1'              # Soft delete
gem 'ransack', '~> 1.8', '>= 1.8.8'               # Search
gem 'devise', '~> 4.4', '>= 4.4.3'                # User Auth
gem 'devise-i18n', '~> 1.6', '>= 1.6.2'           # Devise i18n
gem 'dotenv', '~> 2.4'                            # user dotenv

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot', '~> 4.10'
  gem 'rspec', '~> 3.7'
  gem 'faker', '~> 1.8', '>= 1.8.7'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails', '~> 0.3.6'
  gem 'pry-byebug', '~> 3.6'
  gem 'pry-doc', '~> 0.13.4'
  gem 'letter_opener_web', '~> 1.3', '>= 1.3.4'
  gem 'letter_opener', '~> 1.6'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
