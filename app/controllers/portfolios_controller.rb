class PortfoliosController < ApplicationController

    def index
        @portfolio_items = Portfolio.all
    end
end






#first index method/action is for to list all of items from db/recors to the user, so, to the VIEW pattern from MVC
#these methods are all built in in Rails. so index/create/delete/add etc update...
