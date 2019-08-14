class PagesController < ApplicationController
  def home    
    @my_v = "ovo saljemo iz home metode u vies/home.html.erb"
    @posts = Blog.all
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
