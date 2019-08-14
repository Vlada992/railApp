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
            format.json { render :show, status: :created, location: @portfolio_item }
          else
            format.html { render :new }
            format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
      end


end






#first index method/action is for to list all of items from db/recors to the user, so, to the VIEW pattern from MVC
#these methods are all built in in Rails. so index/create/delete/add etc update...
