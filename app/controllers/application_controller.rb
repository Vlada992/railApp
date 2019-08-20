class ApplicationController < ActionController::Base

    include DeviseWhitelist

    before_action :set_source #EXECUTE this method before everything

    def set_source
        session[:source] = params[:q] if params[:q] # WE STORE QUERY VALUE IN SESSION NEW PROP
    end


end


#set_source method, store in session[:source] propery whatever you get from user on querry
