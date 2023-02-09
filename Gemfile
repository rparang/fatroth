source 'https://rubygems.org'

#For Heroku, make sure "ruby" is added under PLATFORMS for heroku deployment. You can 
#do that via bundle lock --add-platform ruby

ruby "3.0.0"

gem 'turbolinks'
gem 'bcrypt'
gem 'rails', '~> 6.1.7'
gem 'webrick'

group :assets  do
  gem 'sass-rails'
  gem 'uglifier'
end

group :development do
  gem 'sqlite3', '~> 1.6.0'
end

group :production do
  # gems specifically for Heroku go here
  gem 'pg'
  gem 'rails_12factor'
end