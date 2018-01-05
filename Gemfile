# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'canonical-rails'
gem 'coffee-rails', '~> 4.2'
gem 'dalli'
gem 'default_value_for'
gem 'jbuilder', '~> 2.5'
gem 'locale_kit'
gem 'markov'
gem 'meta-tags'
gem 'mysql2'
gem 'natto'
gem 'premailer-rails'
gem 'puma', '~> 3.7'
gem 'rack-attack'
gem 'rack-user_agent'
gem 'rails', '~> 5.1.4'
gem 'rails-i18n'
gem 'ridgepole'
gem 'sass-rails', '~> 5.0'
gem 'sassc-rails', '~> 1.3.0'
gem 'sitemap_generator'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'brakeman', require: false
  gem 'guard', require: false
  gem 'guard-bundler', require: false
  gem 'guard-process', require: false
  gem 'guard-rails', require: false
  gem 'guard-rspec', require: false
  gem 'letter_opener'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', require: false
  gem 'slim_lint', require: false
  gem 'spring'
  gem 'spring-commands-rspec', require: false
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
end

group :test do
  gem 'database_rewinder'
  gem 'rspec-power_assert'
  gem 'simplecov', require: false
end
