module Rscak
	class Server
		def call(env)
			response = Rack::Response.new
			response.write("Hello world!")
			response.finish
		end
	end
end
