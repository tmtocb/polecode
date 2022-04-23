source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'activerecord', '6.1.5'
gem 'activemodel', '6.1.5'
gem 'actionpack', '6.1.5'
gem 'actionmailbox', '6.1.5'
gem 'actionmailer', '6.1.5'
gem 'actiontext', '6.1.5'
gem 'activejob', '6.1.5'
gem 'activestorage', '6.1.5'
gem 'activesupport', '6.1.5'
gem 'actionview', '6.1.5'
gem 'railties', '6.1.5'
gem 'sprockets-rails'

gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.4.4', require: false

# Validations:
gem 'dry-validation'
# Slack integration:
gem 'slack-notifier', '~> 2.4'

group :development do
  gem 'better_errors'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
end

group :test do
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 6.0.0.rc1'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'simplecov', require: false
end

group :development, :test do
  gem 'bundler-audit'
  gem 'pry', '~> 0.13.1'
end
