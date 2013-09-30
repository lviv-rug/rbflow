source "https://rubygems.org"

gem "rails", "~> 3.2.14"

gem "capistrano"
gem "unicorn"

gem "therubyracer"

gem "jquery-rails", "~> 2.2.1"
gem "omniauth", "~> 1.1.4"
gem "omniauth-openid", "~> 1.0.1"
gem "omniauth-twitter", "~> 0.0.16"
gem "omniauth-github", "~> 1.1.0"
gem "cancan", "~> 1.6.9"
gem "rdiscount", "~> 2.0.7.2"
gem "kaminari", "~> 0.14.1"
gem "thinking-sphinx", "~> 2.0.12"

group :assets do
  gem "uglifier", "~> 1.2.4"
end

group :development, :test do
  gem "sqlite3", "~> 1.3.6"
  gem "rspec-rails", "~> 2.10.1"
end

group :test do
  gem "factory_girl_rails", "~> 3.4.0"
end

group :staging, :production do
  gem "mysql2", "~> 0.3.11"
  gem "exception_notification", "~> 2.6.1"
end