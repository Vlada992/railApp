class PortfoliosController < ApplicationController

    def index
        @portfolio_items = Portfolio.all #call instance on Portfolio class(modal) and put with .all method all hashes in array
      
    end

    def new
        @portfolio_item = Portfolio.new #databse method to return new Array with hashes with emtpy values
    end


    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

        respond_to do |format|
          if @portfolio_item.save

            format.html { redirect_to portfolios_path, notice: 'PORTFOLIO was created! bravo!!' }
          else
            format.html { render :new }
          end
        end
      end


      def edit    #route will navigate to 2/edit and pass control to edit method which will interact with edith.html.erb view
        @show_param = params                            # {controller: portfolio, id:1, etc}
        @portfolio_item = Portfolio.find(params[:id]) #pass id prop form Portfolio instance object/hash {}
      end


      #update method will be fired after we click update portfolio in edit.html page, which will activate this controller method
      def update
        @portfolio_item = Portfolio.find(params[:id])
        respond_to do |format|
          if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
            format.html { redirect_to portfolios_path, notice: 'Portfolio record was updated!' }
          else
            format.html { render :edit }
          end
        end
      end



    def show #controller, interact with modal and view MVC pattern
        @show_param_1 = params
        @portfolio_item = Portfolio.find(params[:id]) #again, find database record we typed in url when click on show
    end


    def destroy
        #perform a lookup for specific record
        @portfolio_item = Portfolio.find(params[:id])

        #destroy the record from database
        @portfolio_item.destroy

        #redirect
        respond_to do |format|
          format.html { redirect_to portfolios_url, notice: 'Record was removed!.' }
        end
    end




end




#id here will be took from URL we specified in browser
#Portfolio.all add .all method on this class object, or modal.
#first index method/action is for to list all of items from db/recors to the user, so, to the VIEW pattern from MVC
#these methods are all built in in Rails. so index/create/delete/add etc update...
#so i guess Portfolio class that also extends from someone, with .new will add us new instance object, to use to fill
#form submit part will call the BUILT IN  dev create end method here and pasas arguments we filled in form, to it