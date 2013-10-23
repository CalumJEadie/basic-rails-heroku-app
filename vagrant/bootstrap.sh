#!/usr/bin/env bash

# References:
#
# http://docs.vagrantup.com/v2/getting-started/provisioning.html
# http://ruby.railstutorial.org/ruby-on-rails-tutorial-book#sec-rubygems

apt-get update
apt-get install -y vim curl

# Install Heroku Toolbelt.
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Install RVM for managing Ruby versions.
curl -L https://get.rvm.io | bash -s

# Install RVM dependancies.
rvm requirements

# Install Ruby.
rvm install ruby

# Use version just install by default.
rvm use ruby --default

# Install RubyGems.
rvm rubygems current

# Install Rails.
# Reduce installation time by not installing rdoc and ri documentation.
gem install rails --no-rdoc --no-ri