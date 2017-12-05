source 'https://rubygems.org'

group :docker do
  gem 'rake-tasks-docker', git: 'git@github.com:inviqa/inviqa-rake-tasks-docker.git',
                           ref: 'feature/more-tasks-to-avoid-make-tasks'
end

group :chef do
  gem 'berkshelf', '~> 5.6'
  gem 'chef', '~> 12.10.24'
  gem 'knife-solo', '~> 0.6.0'
  gem 'knife-solo_data_bag', '~> 1.1.0'
end

group :chef_development do
  gem 'chefspec', '~> 4.6'
  gem 'foodcritic', '~> 6.2'
  gem 'kitchen-docker', '~> 2.3.0'
  gem 'kitchen-vagrant', '~> 0.20.0'
  gem 'rubocop', '~> 0.49.0'
  gem 'test-kitchen', '~> 1.8'
end

group :deploy do
  gem 'capistrano', '~> 2.15'
  gem 'railsless-deploy', '~> 1.1'
end

group :magento2 do
  gem 'rake-tasks-magento2', git: 'git@github.com:inviqa/inviqa-rake-tasks-magento2.git'
end

group :mysql do
  gem 'rake-tasks-mysql', git: 'git@github.com:inviqa/inviqa-rake-tasks-mysql.git'
end

group :php do
  gem 'rake-tasks-php', git: 'git@github.com:inviqa/inviqa-rake-tasks-php.git'
end

group :rake do
  gem 'rake-tasks-help', git: 'git@github.com:inviqa/inviqa-rake-tasks-help.git'
end

group :test do
  # CI / testing
  gem 'serverspec', '~> 2.31'
end

group :varnish do
  gem 'rake-tasks-varnish', git: 'git@github.com:inviqa/inviqa-rake-tasks-varnish.git'
end

# Execution helpers
gem 'rubygems-bundler', '~> 1.4.4' if Bundler.settings[:path].nil?
