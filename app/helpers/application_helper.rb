module ApplicationHelper
  #it will enter to look for all the methods in thsi global application helper

  def login_helper(style)
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
      #link_to "Logout", destroy_user_session_path, method: :delete
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
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
    PetrovicViewTool::Rendered.copyright("Vladan Petrovic", "All rights reserved")
  end
end

#fantazija, shvatih to

#GuestUser obj class also inherits from User class

=begin
before_action :set_copyright                  #METHOD of this class to call

    def set_copyright
        #@copyright = MyViewTool::Rendered.copyright('Vladan Petrovic', "All rights reserved")
        @copyright = PetrovicViewTool::Rendered.copyright('Vladan Petrovic', "All rights reserved")
    end
=end
