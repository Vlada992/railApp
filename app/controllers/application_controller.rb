class ApplicationController < ActionController::Base

    include DeviseWhitelist #including this module
    include SetSource #method for setting query source string in session prop
    include CurrentUserConcern
    include DefaultPageContent
end


#small gem, module
##################################################
#module MyViewTool
    #class Rendered
        #def self.copyright(name, msg)         #self = this, object, when instance is made
            #"&copy; #{Time.now.year} | <b> #{name}</b> #{msg}".html_safe    #render as html code
        #end
    #end
#end
#####################################################3

# module, inside is class, module is functionality passed into some class


#set_source method, store in session[:source] propery whatever you get from user on querry
#including 2 modules for now here in this class, in this object class

# super || , if super not returning nil, add that, otherwise ad OpenStruct hash








#petrovic_view_tool === PetrovicViewTool::Rendered.copyright