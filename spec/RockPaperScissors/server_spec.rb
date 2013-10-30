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
		
		it "Should include Usuario" do
			response = app.get('/')
			response.body.should match('Usuario')
		end
		
		it "Should include Ordenador" do
			response = app.get('/')
			response.body.should match('Usuario')
		end
		
		it "Should include Resultado" do
			response = app.get('/')
			response.body.should match('Resultado')
		end
		
		it "Should include Historial" do
			response = app.get('/')
			response.body.should match('Historial')
		end
	end
end
