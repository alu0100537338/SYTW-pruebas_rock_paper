require 'spec_helper.rb'

describe RockPaperScissors::App do

	def app
		Rack::MockRequest.new(Rack::Session::Cookie.new(RockPaperScissors::App.new,
																:secret => 'cookie'))
	end
	
	context '/' do
		it "Should return a 200 code" do
			response = app.get('/')
			response.status.should == 200
		end
		
		it "Should include Jugando a -> Piedra, Papel o Tijeras" do
			response = app.get('/')
			response.body == 'Jugando a -> Piedra, Papel o Tijeras'
		end
	end
	
	context "/?choice='Piedra'" do
		it "Should win" do
			computer_throw = 'Tijeras'
			response = app.get("/?choice='Piedra'")
			response.body.include?("Ganaste!")
		end
		
		it "Should lose" do
			computer_throw = 'Papel'
			response = app.get("/?choice='Piedra'")
			response.body.include?("Oh no!")
		end
		
		it "Should tie" do
			computer_throw = 'Piedra'
			response = app.get("/?choice='Piedra'")
			response.body.include?("Empate! It's something!")
		end
	end
	
	context "/?choice='Papel'" do
		it "Should win" do
			computer_throw = 'Piedra'
			response = app.get("/?choice='Papel'")
			response.body.include?("Ganaste!")
		end
		
		it "Should lose" do
			computer_throw = 'Tijeras'
			response = app.get("/?choice='Papel'")
			response.body.include?("Oh no!")
		end
		
		it "Should tie" do
			computer_throw = 'Papel'
			response = app.get("/?choice='Papel'")
			response.body.include?("Empate! It's something!")
		end
	end
	
	context "/?choice='Tijeras'" do
		it "Should win" do
			computer_throw = 'Papel'
			response = app.get("/?choice='Tijeras'")
			response.body.include?("Ganaste!")
		end
		
		it "Should lose" do
			computer_throw = 'Piedra'
			response = app.get("/?choice='Tijeras'")
			response.body.include?("Oh no!")
		end
		
		it "Should tie" do
			computer_throw = 'Tijeras'
			response = app.get("/?choice='Tijeras'")
			response.body.include?("Empate! It's something!")
		end
	end
end
