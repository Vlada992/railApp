module SetSource
    extend ActiveSupport::Concern # module itself, with all the methods

    included do
        before_action :set_source #EXECUTE this method before everything
    end


    def set_source
        session[:source] = params[:q] if params[:q] # WE STORE QUERY VALUE IN SESSION NEW PROP
    end

end