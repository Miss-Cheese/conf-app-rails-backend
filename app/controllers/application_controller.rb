class ApplicationController < ActionController::API

    def get_auth_header
        request.headers["Authorization"]
    end

    def decoded_token(token)
        JWT.decode(get_auth_header, ENV["secret_key"])[0]["user_id"]
    end

    def session_user
        User.find_by(id: decoded_token)
    end

end
