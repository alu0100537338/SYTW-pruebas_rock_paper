module Rscak
	class Server
		def call(env)
			response = Rack::Response.new
			response.status = 200
			response.finish
		end
	end
end
