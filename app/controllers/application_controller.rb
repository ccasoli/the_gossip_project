class ApplicationController < ActionController::Base

    def as_to_login
        if session[:user_id] == nil
            redirect_to new_session_path
        end
    end
end
