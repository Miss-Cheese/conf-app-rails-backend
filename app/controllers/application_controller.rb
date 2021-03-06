class ApplicationController < ActionController::API

    # helper_method :current_user
    # helper_method :logged_in?

    def current_user_id
        session[:user_id]
    end

    def current_user
        User.find_by(id: session[:user_id])
    end

    def logged_in?
        session[:user_id] != nil
    end

end
