require 'faye'
require File.expand_path('../config/initializers/faye_token.rb', __FILE__)

Faye::WebSocket.load_adapter('thin')

faye_server = Faye::RackAdapter.new(:mount => '/faye', :timeout => 45)
run faye_server