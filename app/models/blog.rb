class Blog < ApplicationRecord
    enum status: {draft: 0, published: 1}
    extend FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of :title, :body #not gonna alow db/instance creation of blog class without title or body key

    belongs_to :topic          #this model(Blog class) belongs to Topic model(Topic class)

    def self.special_blogs
        all
    end

    def self.featured_blogs
        limit(2)
    end

    
end


#enum for toggling draft or published
#FriendlyId for mapping id to names