source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '3.2.13'
gem 'bcrypt-ruby', '3.0.1'
gem 'haml'
gem "haml-rails" #For scaffold and generate
gem 'rails-i18n' #locales

gem 'bootstrap-generators', '~> 2.3' # for scaffold and generate


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "therubyracer"
  gem "less-rails" 
  gem 'twitter-bootstrap-rails'
  gem 'jquery-ui-rails'
  gem 'font-awesome-sass-rails'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'simple_form'

group :development do
  gem 'bullet'
  gem 'better_errors'
  gem 'binding_of_caller'#For bettererrors
  gem 'meta_request' #For RailsPanel in Chrome
end  



group :development, :test do
  gem 'sqlite3'

end

group :test do
  gem 'rspec-rails'
  gem "shoulda-matchers"
  gem 'simplecov', :require => false
  gem "factory_girl_rails", "~> 4.0"
end

group :production do
    gem "pg"
end