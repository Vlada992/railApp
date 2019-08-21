class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]  # before_action(arg, arg, arg)
  layout "portfolio" # same as ===> layout("portfolio")

    def index
        @portfolio_items = Portfolio.all   # Portfolio.find_by_sql("SELECT portfolios.* from portfolios")
         #Portfolio.all  #call instance on Portfolio class(modal) and put with .all method all hashes in array
    end

    def angular
      @angular_portfolio_items = Portfolio.angular
    end




    def new
        @portfolio_item = Portfolio.new #database method to return new Array with hashes with emtpy values new port object
        3.times { @portfolio_item.technologies.build } #make 3 instance of tech portfolio
    end


    def create
       @portfolio_item = Portfolio.new( portfolio_params )

        respond_to do |format|
          if @portfolio_item.save
    
            format.html { redirect_to portfolios_path, notice: 'PORTFOLIO was created! bravo!!' }
          else
            format.html { render :new}
          end
        end
      end




      def edit    #route will navigate to 2/edit and pass control to edit method which will interact with edith.html.erb view
        @show_param = params                         
        #@portfolio_item = Portfolio.find(params[:id]) #pass id prop form Portfolio instance object/hash {}
        #3.times { @portfolio_item.technologies.build } #make 3 instance of tech portfolio

      end


      #update method will be fired after we click update portfolio in edit.html page, which will activate this controller method
      def update
        #@portfolio_item = Portfolio.find(params[:id])
        respond_to do |format|
          if @portfolio_item.update( portfolio_params)
            format.html { redirect_to portfolios_path, notice: 'Portfolio record was updated!' }
          else
            format.html { render :edit }
          end
        end
      end



    def show #controller, interact with modal and view MVC pattern
        @show_param_1 = params
        #@portfolio_item = Portfolio.find(params[:id])        
    end


    def destroy
        #perform a lookup for specific record
        #@portfolio_item = Portfolio.find(params[:id])

        #destroy the record from database
        @portfolio_item.destroy

        #redirect
        respond_to do |format|
          format.html { redirect_to portfolios_url, notice: 'Record was removed!.' }
        end
    end

    
    private

    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body, 
                                        technologies_attributes: [:name]
                                       )
    end


    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end


end






#id here will be took from URL we specified in browser
#Portfolio.all add .all method on this class object, or modal.
#first index method/action is for to list all of items from db/recors to the user, so, to the VIEW pattern from MVC
#these methods are all built in in Rails. so index/create/delete/add etc update...
#so i guess Portfolio class that also extends from someone, with .new will add us new instance object, to use to fill
#form submit part will call the BUILT IN  dev create end method here and pasas arguments we filled in form, to it


#params.require(:portfolio).permit(:title, :subtitle, :body) -for update

# params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]) =. for create
