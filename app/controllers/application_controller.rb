class ApplicationController < ActionController::Base
    gem "sqlite3", ">1.7", "<1.8"

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end

