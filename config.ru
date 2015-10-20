require 'bundler'
require './http-logger'
Bundler.require

$stdout.sync = true

use Rack::HTTPLogger
run lambda { |env| [200, {'Content-Type'=>'text/plain'}, StringIO.new("Hello World!\n")] }

