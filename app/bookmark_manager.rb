require_relative 'data_mapper_setup'
require 'sinatra/base'
require_relative './models/link'

class BookmarkManager < Sinatra::Base

  run! if app_file == $0
end