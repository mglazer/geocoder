require 'rubygems'
require 'sinatra/base'
require 'date'
require 'rack/utils'

require 'geocoder/us/database'
require 'logger'

require 'geocoder'

class App < Sinatra::Base
  set :sessions, false
  set :haml, {:format => :html5}
  set :views, Proc.new { File.join(root, '..', "views") }
  set :protection, :except => :frame_options

  set :run, false



  helpers do
    include Rack::Utils
    alias_method :h, :escape
  end



  use Geocoder::Services

  run! if app_file == $0
end


