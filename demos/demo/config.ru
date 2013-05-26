require 'rubygems'
require 'sinatra'

($:.push(File.dirname(__FILE__)))


Sinatra::Base.configure do
    set :run, false
    set :env, ENV['RACK_ENV']
    set :database, '/Volumes/Optibay/impl/tigr/geocoder/database/geocoder.sqlite3'
end
#Sinatra::Base.set(:run, false)
#Sinatra::Base.set(:env, ENV['RACK_ENV'])
#Sinatra::


require 'geocom_geocode'
run GeocomGeocode::GeocodeServer


