require 'spec_helper.rb'

describe Rsack::Server do

	def server
		Rack::MockRequest.new(Rsack::Server.new)
	end
	
	context '/' do
		it "should return a 200 code" do
			response = server.get('/')
			response.status.should == 200
		end
	end
end
