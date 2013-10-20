require "test/unit"
require "rack/test"
require './rock_paper.rb'

class AppTest < Test::Unit::TestCase
	include Rack::Test::Methods
	
	def app
		Rack::Builder.new do
			run MyApp.new
		end.to_app
	end
	
	def test_index
		get "/"
		
		assert last_response.ok?
	end
	
	def test_body
		get "/"
		
		assert_equal lat_response.body, 'Hello', "body must be hello"
	end
end
