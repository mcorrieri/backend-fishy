class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, "heynow")
    end
end
