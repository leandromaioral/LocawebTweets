source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass',          '3.3.7'
gem 'coffee-rails',            '4.2.1'
gem 'jbuilder',                '2.6.1'
gem 'jquery-rails',            '4.2.2'
gem 'puma',                    '3.6.2'
gem 'rails',                   '5.0.1'
gem 'sass-rails',              '5.0.6'
gem 'slim-rails',              '3.1.1'
gem 'sqlite3',                 '1.3.13'
gem 'turbolinks',              '5.0.1'
gem 'twitter',                 '6.1.0'
gem 'uglifier',                '3.0.4'

group :development do
  gem 'better_errors',         '2.1.1'
  gem 'binding_of_caller',     '0.7.2'
  gem 'listen',                '3.1.5'
  gem 'rubocop',               '0.47.1', require: false
  gem 'web-console',           '3.4.0'
end

gem 'tzinfo-data', '1.2016.10', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem 'byebug',                '9.0.6', platform: :mri
  gem 'factory_girl_rails',    '4.8.0'
  gem 'pry-rails',             '0.3.4'
  gem 'rspec-rails',           '3.5.2'
  gem 'spring',                '2.0.0'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'database_cleaner',      '1.5.3'
  gem 'rspec',                 '3.5.0'
  gem 'shoulda-matchers',      '3.1.1'
  gem 'simplecov',             '0.12.0', require: false
end
