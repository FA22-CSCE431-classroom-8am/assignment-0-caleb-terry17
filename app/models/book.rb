class Book < ApplicationRecord
    # enables validation for the title attribute in a Book
    validates :title, presence: true
    validates :author, presence: true
    validates :published, presence: true
    validates :price, presence: true
end