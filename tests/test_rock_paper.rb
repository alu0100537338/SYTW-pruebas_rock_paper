require "test/unit"
require "rack/test"
require './rock_paper.rb'

class AppTest < Test::Unit::TestCase
	include Rack::Test::Methods
	
	def app
		Rack::Builder.new do
			run RockPaperScissors::App.new
		end.to_app
	end
	
	def test_index
		get "/"
		assert last_response.ok?
	end
	
	def test_body
		get "/"
		assert last_response.body.include? ("Jugando a -> Piedra, Papel o Tijeras")
	end
	
	def test_
		get "/public/style.css"
		assert last_response.ok?
	end
end
