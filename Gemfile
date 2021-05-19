source "https://rubygems.org"

ruby "2.6.3"

gem "bootsnap", ">= 1.4.2", require: false
gem "clearance", "~> 2.1.0"
gem "kaminari", "~> 1.1.1"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.3"
gem "rails", "~> 6.0.2", ">= 6.0.2.1"
gem "sass-rails", ">= 6"
gem "sidekiq", "~> 5.2.7"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "byebug", platforms: :mri
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.8"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rack-mini-profiler", require: false
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara"
  gem "capybara-selenium"
  gem "chromedriver-helper"
  gem "factory_bot_rails"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
end
