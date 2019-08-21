class ApplicationController < ActionController::Base

    include DeviseWhitelist #including this module
    include SetSource #method for setting query source string in session prop
    include CurrentUserConcern
    include DefaultPageContent

    
end


#set_source method, store in session[:source] propery whatever you get from user on querry
#including 2 modules for now here in this class, in this object class

# super || , if super not returning nil, add that, otherwise ad OpenStruct hash