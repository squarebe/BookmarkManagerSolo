require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

#this sets datamapper to work on localhost:
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require './app/models/link' #this require each model individually.

DataMapper.finalize
DataMapper.auto_upgrade!