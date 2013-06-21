($:.push(File.dirname(__FILE__)))
require 'app'

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a")
$stderr.reopen(log)

run App