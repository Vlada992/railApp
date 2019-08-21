module ApplicationHelper
     #it will enter to look for all the methods in thsi global application helper
     def login_helper
         if current_user.is_a?(User)
             link_to "Logout", destroy_user_session_path, method: :delete
           else
            (link_to "Register", new_user_registration_path) +
            "<br>".html_safe +
            (link_to "Login", new_user_session_path)
         end
     end

     def source_helper(layout_name)
         if session[:source] # if is true, if not nil 
            greet_v = "Thanks for visiting me from #{session[:source]} and you are on #{layout_name}"
            content_tag(:p, greet_v, class: "source-greeting")
         end 
     end


     # before_action :set_copyright   
    def copyright_generator
        #@copyright = MyViewTool::Rendered.copyright('Vladan Petrovic', "All rights reserved")
        PetrovicViewTool::Rendered.copyright('Vladan Petrovic', "All rights reserved")
    end


end














=begin
before_action :set_copyright                  #METHOD of this class to call

    def set_copyright
        #@copyright = MyViewTool::Rendered.copyright('Vladan Petrovic', "All rights reserved")
        @copyright = PetrovicViewTool::Rendered.copyright('Vladan Petrovic', "All rights reserved")
    end
=end
