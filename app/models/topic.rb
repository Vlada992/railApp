class Topic < ApplicationRecord

    validates_presence_of :title 

    has_many :blogs
end



# validates_presence_of => will validate that at least title needs to be in db/records
