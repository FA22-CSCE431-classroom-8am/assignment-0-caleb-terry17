class Book < ApplicationRecord
    # enables validation for the title attribute in a Book
    validates :title, presence: true
    :author
    :published
    :price
end
