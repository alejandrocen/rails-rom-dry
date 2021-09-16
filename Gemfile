# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails', '~> 2.7'
gem 'dry-monads', '~> 1.4'
gem 'dry-rails', '~> 0.3.0'
gem 'pg', '~> 1.2'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'rom-rails', '~> 2.3'
gem 'rom-sql', '~> 3.5'
gem 'rubocop-rails', '~> 2.11'
gem 'rubocop-rspec', '~> 2.4'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.0'
end

group :development do
  gem 'listen', '~> 3.3'
end
