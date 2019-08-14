class PagesController < ApplicationController
  def home    
    @inicial_h = {my_name: "Vladan", my_surname: "Petrovic"}
    @posts = Blog.all #calling instance of Blog model(class)
    @skils = Skill.all #calling instance of Skill model(class), adding in inst. var and send to view folder, for .html.erb files

    @port_f= Portfolio.all
    
  end

  def about
  end

  def contact
  end


end

 #routes.rb when recieve get request for /pages/home, route to that page from views/home.html.erb and connect to home method/action
 #here so that now functionality can do it's things /home/vlada992/Desktop/railApp/app/controllers/pages_controller.rb

 #actually routes.rb when recieve GET request for /pages/home, coonect to this method, add functinality and pass control to home method
 #and home method will with same views page, show you  home.html.erb view page 

 #instance variables here, DOES NOT need to be returned from this 3 methods, they are accessible without that in views.