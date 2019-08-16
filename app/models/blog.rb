class Blog < ApplicationRecord
    enum status: {draft: 0, published: 1}
    extend FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of :title, :body #not gonna alow db/instance creation of blog class without title or body key
end


#enum for toggling draft or published
#FriendlyId for mapping id to names