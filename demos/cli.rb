require 'geocoder/us/database'
require 'pp'

db = Geocoder::US::Database.new(ARGV[0], :debug=>true)
result = db.geocode(ARGV[1])
pp(result)
print "#{result[0][:lat]} N, #{-result[0][:lon]} W\n"
