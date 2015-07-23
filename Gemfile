source 'https://rubygems.org'
ruby '2.2.2'

# core
gem 'rails', '4.2.3'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# infrastructure
gem 'puma'

# plugins
gem 'devise', '~> 3.2'

group :production do
  gem 'rails_12factor', group: :production
  gem 'sentry-raven', :git => 'https://github.com/getsentry/raven-ruby.git'
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'

  # testing
  gem 'rspec-rails', '~> 3.3.3'
  gem 'spring-commands-rspec'

  # guard
  gem 'guard-rspec'
  gem 'guard-coffeescript'
end
