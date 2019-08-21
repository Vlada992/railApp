class Topic < ApplicationRecord

    validates_presence_of :title  #validates_presence_of(:title)

    has_many :blogs       # same as has_many(:blogs) --> so, invocation of has_many method/action
end



# validates_presence_of => will validate that at least title needs to be in db/records
