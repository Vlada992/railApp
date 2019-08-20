class ApplicationController < ActionController::Base

    include DeviseWhitelist
    include SetSource #method for setting query source string in session prop

end


#set_source method, store in session[:source] propery whatever you get from user on querry
