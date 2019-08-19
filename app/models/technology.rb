class Technology < ApplicationRecord
  belongs_to :portfolio
end



#so, class Technology, created from terminal like: rails g model Tech rails g model Tech name:string portfolio:references


#so we created Technology model, rails g model Technology name:string portfolio:references
# technology_attributes are prop on Portfolio.create() method