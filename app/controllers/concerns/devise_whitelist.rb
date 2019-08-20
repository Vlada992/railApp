 module DeviseWhitelist
    extend ActiveSupport::Concern        #all methods from activeSuport modules extend ActiveSupport.Concern (module)

    included do
        before_action :configure_permitted_parameters, if: :devise_controller?
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit( :sign_up, keys: [:name] ) #just pass newone you want to permit, add in list
        devise_parameter_sanitizer.permit( :account_update, keys: [:name] )
    end


end

